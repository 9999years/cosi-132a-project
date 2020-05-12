import com.bericotech.clavin.resolver.ResolvedLocation;
import com.bericotech.clavin.GeoParser;
import com.bericotech.clavin.GeoParserFactory;
import com.bericotech.clavin.ClavinException;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.core.JsonProcessingException;

import java.util.List;
import java.util.ArrayList;
import java.lang.System;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.Scanner;
import java.lang.StringBuilder;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

public class NERServer {
  GeoParser parser = null;
  ObjectMapper mapper = new ObjectMapper();
  InputStream input;
  PrintStream output;

  NERServer(InputStream input, PrintStream output) {
    this.input = input;
    this.output = output;
  }

  /**
   * The next "chunk" of input in the scanner. Chunks are separated by *at least*
   * one empty line.
   */
  static String nextChunk(Scanner sc) {
    var sb = new StringBuilder(1024);
    var skippingBlanks = true;
    while (sc.hasNextLine()) {
      var line = sc.nextLine();
      if (skippingBlanks) {
        if (!line.isEmpty()) {
          skippingBlanks = false;
        }
      } else {
        if (line.isEmpty()) {
          break;
        }
      }
      sb.append(line);
    }
    return sb.toString();
  }

  void writeValue(Object o) throws JsonProcessingException {
    output.println(mapper.writeValueAsString(o));
    output.println("\n\n");
  }

  String setIndex(String filename) {
    try {
      parser = GeoParserFactory.getDefault(filename);
    } catch(ClavinException exc) {
      return exc.toString();
    }
    return null;
  }

  /**
   * Set the classifier currently in use.
   */
  SetIndexResponse handleSetClassifierMessage(SetIndexMessage message) {
    var err = setIndex(message.index);
    return message.response(err);
  }

  /**
   * Classify the given text.
   */
  ClassifyResponse handleClassifyMessage(ClassifyMessage message) throws Exception {
    List<ResolvedLocation> resolvedLocations = parser.parse(message.text);
    var locations = new ArrayList<Location>();
    for (var loc : resolvedLocations) {
      locations.add(new Location(loc));
    }
    return message.response(locations);
  }

  void handleMessage(String rawMessage) throws Exception {
    var baseMessage = mapper.readValue(rawMessage, Message.class);

    if (baseMessage instanceof SetIndexMessage) {
      writeValue(handleSetClassifierMessage((SetIndexMessage) baseMessage));
    } else if (baseMessage instanceof ClassifyMessage) {
      writeValue(handleClassifyMessage((ClassifyMessage) baseMessage));
    }
  }

  void run() throws Exception {
    var sc = new Scanner(input);
    while (sc.hasNextLine()) {
      var rawMessage = nextChunk(sc);
      handleMessage(rawMessage);
    }
  }

  public static void main(String[] args) throws Exception {
    var server = new NERServer(System.in, System.out);
    server.run();
  }
}
