package hd;

import org.eclipse.jdt.internal.core.JavadocConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c {
    public static String a(String oldStr) {
        try {
            return oldStr.replaceAll("\\\\\"", JavadocConstants.ANCHOR_PREFIX_END).replaceAll("\\\\\\\\", "\\\\");
        } catch (Exception unused) {
            return "@rrorEncode";
        }
    }

    public static String b(String oldStr) {
        try {
            return oldStr.replaceAll(JavadocConstants.ANCHOR_PREFIX_END, "\\\\\"");
        } catch (Exception unused) {
            return "@rrorEncode";
        }
    }

    public static String c(JSONObject jsonOBjct) {
        String jSONObject;
        if (jsonOBjct != null) {
            try {
                jSONObject = jsonOBjct.toString();
            } catch (Exception unused) {
                return "@rrorEncode";
            }
        } else {
            jSONObject = "";
        }
        return jSONObject.replaceAll(JavadocConstants.ANCHOR_PREFIX_END, "\\\\\"");
    }

    public static JSONArray d(JSONObject jsonOBjct, String key) {
        if (jsonOBjct != null) {
            try {
                return jsonOBjct.getJSONArray(key);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static JSONObject e(JSONArray JArray, int index) {
        if (JArray != null) {
            try {
                return JArray.getJSONObject(index);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static JSONObject f(JSONObject jsonOBjct, String key) {
        if (jsonOBjct == null) {
            return null;
        }
        try {
            return jsonOBjct.getJSONObject(key);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String g(JSONObject obj, String key) {
        if (obj == null) {
            return "";
        }
        try {
            return obj.get(key).toString();
        } catch (JSONException unused) {
            return "not_found";
        }
    }

    public static JSONObject h(String jsonStr) {
        try {
            return new JSONObject(jsonStr);
        } catch (JSONException unused) {
            return null;
        }
    }
}
