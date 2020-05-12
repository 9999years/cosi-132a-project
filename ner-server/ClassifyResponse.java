import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonTypeName;

@JsonTypeName("classify")
public class ClassifyResponse extends Response {
    public ArrayList<Location> locations;

    public ClassifyResponse(Message message, ArrayList<Location> locations) {
        super(message);
        this.locations = locations;
    }
}