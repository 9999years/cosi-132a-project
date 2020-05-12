import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.CoreAnnotations.AnswerAnnotation;
import edu.stanford.nlp.ling.CoreAnnotations.AnswerProbAnnotation;

import java.util.Map;
import java.util.HashMap;

public class JsonLabel {
    public int start;
    public int end;
    public String classification;
    public String text;
    public double confidence;

    public JsonLabel(CoreLabel label) {
        start = label.beginPosition();
        end = label.endPosition();
        classification = label.getString(AnswerAnnotation.class);
        confidence = label.get(AnswerProbAnnotation.class);
        text = label.originalText();
    }
}