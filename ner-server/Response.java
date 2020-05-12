import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;

@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = As.PROPERTY, property = "action")
@JsonSubTypes({
    @JsonSubTypes.Type(value = SetClassifierResponse.class, name = "set-classifier")
})
public class Response {
    public String uuid;

    public Response(Message message) {
        uuid = message.uuid;
    }
}