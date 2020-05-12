import edu.stanford.nlp.ie.AbstractSequenceClassifier;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ie.crf.*;
import edu.stanford.nlp.ling.CoreAnnotations.AnswerAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.AnswerProbAnnotation;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;

import java.util.List;
import java.util.ArrayList;
import java.lang.System;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.Scanner;

public class NERServer {

  public static void main(String[] args) throws Exception {
    AbstractSequenceClassifier<CoreLabel> classifier = null;
    var mapper = new ObjectMapper();
    Message message_ = null;
    var sc = new Scanner(System.in);

    while (sc.hasNextLine()) {
      var line = sc.nextLine();
      message_ = mapper.readValue(line, Message.class);

      if (message_ instanceof SetClassifierMessage) {
        // Set the classifier.
        var message = (SetClassifierMessage) message_;
        classifier = CRFClassifier.getClassifier(message.classifier);

        var response = new SetClassifierResponse(message);
        var encodedResponse = mapper.writeValueAsString(response);
        System.out.println(encodedResponse);
      } else if (message_ instanceof ClassifyMessage) {
        // Classify the given text.
        var message = (ClassifyMessage) message_;
        var tokenLists = classifier.classify(message.text);

        var response = new ClassifyResponse(message);
        var tokens = new ArrayList<JsonLabel>();
        for (List<CoreLabel> tokenList : tokenLists) {
          for (CoreLabel label : tokenList) {
            if(label.getString(AnswerAnnotation.class).equals("LOCATION")) {
              tokens.add(new JsonLabel(label));
            }
          }
        }
        response.tokens = tokens;
        var encodedResponse = mapper.writeValueAsString(response);
        System.out.println(encodedResponse);
      }
    }
  }
}
