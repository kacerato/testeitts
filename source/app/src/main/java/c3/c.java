package C3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.StopOnOrchestrator;
import org.json.JSONObject;

public class c {
    public static String a(String response) {
        String trim = response.trim();
        int indexOf = trim.indexOf(123);
        int lastIndexOf = trim.lastIndexOf(125);
        if (indexOf < 0 || lastIndexOf < indexOf) {
            throw new StopOnOrchestrator("Failed to inspect prompt files: invalid response.");
        }
        return trim.substring(indexOf, lastIndexOf + 1);
    }

    public static JSONObject b(String response) {
        if (response == null || response.trim().isEmpty()) {
            throw new StopOnOrchestrator("Failed to inspect prompt files: empty response.");
        }
        try {
            return new JSONObject(a(response));
        } catch (Exception unused) {
            throw new StopOnOrchestrator("Failed to inspect prompt files: invalid response.");
        }
    }
}
