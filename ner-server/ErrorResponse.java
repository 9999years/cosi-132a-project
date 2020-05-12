import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("error")
public class ErrorResponse extends Response {
    public String error;

    public ErrorResponse(Message message) {
        super(message);
    }
}