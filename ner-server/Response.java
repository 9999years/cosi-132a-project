import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;

@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = As.PROPERTY, property = "action")
@JsonSubTypes({
    @JsonSubTypes.Type(value = SetIndexResponse.class, name = "set-index"),
    @JsonSubTypes.Type(value = ClassifyResponse.class, name = "classify")
})
public class Response {
    public String uuid;

    public Response(Message message) {
        uuid = message.uuid;
    }
}