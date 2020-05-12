import com.bericotech.clavin.extractor.LocationOccurrence;
import com.bericotech.clavin.resolver.ResolvedLocation;

public class Location {
    public int start;
    public int end;
    public String text;
    public double confidence;
    public String match;
    public String locationName;
    public String country;
    public double latitude;
    public double longitude;

    public Location(ResolvedLocation location) {
        var pos = location.getLocation();
        start = pos.getPosition();
        text = pos.getText();
        end = start + text.length();
        confidence = location.getConfidence();
        match = location.getMatchedName();
        var geo = location.getGeoname();
        latitude = geo.getLatitude();
        longitude = geo.getLongitude();
        country = geo.getPrimaryCountryName();
        locationName = geo.getName();
    }
}