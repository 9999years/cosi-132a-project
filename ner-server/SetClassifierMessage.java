import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("set-classifier")
public class SetClassifierMessage extends Message {
    public String classifier;
}