import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;

@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = As.PROPERTY, property = "action")
@JsonSubTypes({
    @JsonSubTypes.Type(value = ClassifyMessage.class, name = "classify"),
    @JsonSubTypes.Type(value = SetIndexMessage.class, name = "set-index")
})
class Message {
    public String uuid;
}