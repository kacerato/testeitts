package T0;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@C0.a
public final class r {

    public static final Pattern f23852a = Pattern.compile("\\\\.");

    public static final Pattern f23853b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    @C0.a
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONObject jSONObject2 = (JSONObject) obj2;
            if (jSONObject.length() != jSONObject2.length()) {
                return false;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (jSONObject2.has(next)) {
                    try {
                        G0.A.r(next);
                        if (!a(jSONObject.get(next), jSONObject2.get(next))) {
                        }
                    } catch (JSONException unused) {
                    }
                }
                return false;
            }
            return true;
        }
        if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
            return obj.equals(obj2);
        }
        JSONArray jSONArray = (JSONArray) obj;
        JSONArray jSONArray2 = (JSONArray) obj2;
        if (jSONArray.length() != jSONArray2.length()) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (!a(jSONArray.get(i10), jSONArray2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    @C0.a
    public static String b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = f23853b.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            char charAt = matcher.group().charAt(0);
            if (charAt == '\f') {
                matcher.appendReplacement(stringBuffer, "\\\\f");
            } else if (charAt == '\r') {
                matcher.appendReplacement(stringBuffer, "\\\\r");
            } else if (charAt == '\"') {
                matcher.appendReplacement(stringBuffer, "\\\\\\\"");
            } else if (charAt == '/') {
                matcher.appendReplacement(stringBuffer, "\\\\/");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        matcher.appendReplacement(stringBuffer, "\\\\b");
                        break;
                    case '\t':
                        matcher.appendReplacement(stringBuffer, "\\\\t");
                        break;
                    case '\n':
                        matcher.appendReplacement(stringBuffer, "\\\\n");
                        break;
                }
            } else {
                matcher.appendReplacement(stringBuffer, "\\\\\\\\");
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    @NonNull
    @C0.a
    public static String c(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String a10 = L.a(str);
        Matcher matcher = f23852a.matcher(a10);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            char charAt = matcher.group().charAt(1);
            if (charAt == '\"') {
                matcher.appendReplacement(stringBuffer, JavadocConstants.ANCHOR_PREFIX_END);
            } else if (charAt == '/') {
                matcher.appendReplacement(stringBuffer, "/");
            } else if (charAt == '\\') {
                matcher.appendReplacement(stringBuffer, "\\\\");
            } else if (charAt == 'b') {
                matcher.appendReplacement(stringBuffer, "\b");
            } else if (charAt == 'f') {
                matcher.appendReplacement(stringBuffer, "\f");
            } else if (charAt == 'n') {
                matcher.appendReplacement(stringBuffer, "\n");
            } else if (charAt == 'r') {
                matcher.appendReplacement(stringBuffer, StringUtils.CR);
            } else {
                if (charAt != 't') {
                    throw new IllegalStateException("Found an escaped character that should never be.");
                }
                matcher.appendReplacement(stringBuffer, "\t");
            }
        }
        if (stringBuffer == null) {
            return a10;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
