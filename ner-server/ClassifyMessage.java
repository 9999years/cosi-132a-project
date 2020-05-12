import com.fasterxml.jackson.annotation.JsonTypeName;

import java.util.ArrayList;
import java.util.List;

@JsonTypeName("classify")
public class ClassifyMessage extends Message {
    public String text;

    public ClassifyResponse response(ArrayList<Location> tokens) {
        return new ClassifyResponse(this, tokens);
    }
}