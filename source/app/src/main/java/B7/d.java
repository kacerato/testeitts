package B7;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class d {
    public static JsonArray a(JsonObject jsonOBjct, String key) {
        if (jsonOBjct != null) {
            try {
                return jsonOBjct.getAsJsonArray(key);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static JsonObject b(JsonArray JArray, int index) {
        if (JArray != null) {
            try {
                return JArray.get(index).getAsJsonObject();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static JsonObject c(JsonObject jsonOBjct, String key) {
        if (jsonOBjct == null) {
            return null;
        }
        try {
            return jsonOBjct.getAsJsonObject(key);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String d(JsonObject obj, String key) {
        if (obj == null) {
            throw new NullPointerException("json object can't be null");
        }
        if (obj.has(key)) {
            return obj.getAsJsonPrimitive(key).getAsString();
        }
        throw new RuntimeException("json object doesn't contains a key:" + key);
    }

    public static JsonObject e(String jsonStr) {
        try {
            return JsonParser.parseString(jsonStr).getAsJsonObject();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
