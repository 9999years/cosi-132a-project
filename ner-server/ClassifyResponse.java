import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("classify")
public class ClassifyResponse extends Response {
    public ArrayList<JsonLabel> tokens;

    public ClassifyResponse(Message message) {
        super(message);
    }
}