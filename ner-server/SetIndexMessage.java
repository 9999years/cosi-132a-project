import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("set-index")
public class SetIndexMessage extends Message {
    public String index;

    public SetIndexResponse response(String error) {
        return new SetIndexResponse(this, error);
    }
}