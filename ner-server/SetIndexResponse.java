import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("set-index")
public class SetIndexResponse extends Response {
    public String error;

    public SetIndexResponse(Message message, String error) {
        super(message);
        this.error = error;
    }
}