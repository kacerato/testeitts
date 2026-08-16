package y3;

import Ic.C2636o;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;
import java.util.Map;

public class C16137b extends v {

    public static final Gson f129954k = new Gson();

    public class a implements u {
        @Override
        public String a(String text) {
            String g10;
            try {
                C2210b D10 = C16137b.D(text);
                String str = D10.f129955a;
                if (str != null && !str.trim().isEmpty()) {
                    File k10 = D3.a.k(D10.f129955a);
                    String str2 = D10.f129956b;
                    if (str2 == null) {
                        str2 = "";
                    }
                    if (k10.exists() && k10.isFile() && (g10 = C2636o.g(k10)) != null && g10.equals(str2)) {
                        return "ERROR: file already contains identical text";
                    }
                    File parentFile = k10.getParentFile();
                    if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                        return "ERROR: failed to create parent folders";
                    }
                    if (str2.isEmpty()) {
                        return !k10.createNewFile() ? "ERROR: file creation failed" : "OK";
                    }
                    C2636o.e(str2, k10);
                    return "OK";
                }
                return "ERROR: path cannot be empty";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public static final class C2210b {

        public String f129955a;

        public String f129956b;

        public C2210b() {
        }

        public C2210b(a aVar) {
            this();
        }
    }

    public C16137b() {
        super("io.create_file", "Creates a new file inside the current project.", new a());
        b("path", "Project-relative file path to create. Also accepts a single-key JSON object where the key is the path.", true);
        b("text", "Optional initial text content for the file. When using a single-key JSON object, the value is treated as text.", false);
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C2210b D(String str) {
        String str2 = null;
        C2210b c2210b = new C2210b(0 == true ? 1 : 0);
        if (str != null && !str.trim().isEmpty()) {
            String trim = str.trim();
            String str3 = "";
            if (!trim.startsWith("{")) {
                c2210b.f129955a = trim;
                c2210b.f129956b = "";
                return c2210b;
            }
            try {
                C2210b c2210b2 = (C2210b) f129954k.fromJson(trim, C2210b.class);
                if (c2210b2 != null) {
                    c2210b.f129955a = c2210b2.f129955a;
                    c2210b.f129956b = c2210b2.f129956b;
                }
            } catch (Exception unused) {
            }
            String str4 = c2210b.f129955a;
            if (str4 != null && !str4.trim().isEmpty()) {
                return c2210b;
            }
            try {
                Gson gson = f129954k;
                JsonObject jsonObject = (JsonObject) gson.fromJson(trim, JsonObject.class);
                if (jsonObject != null && !jsonObject.entrySet().isEmpty()) {
                    if (jsonObject.has("path")) {
                        if (!jsonObject.get("path").isJsonNull()) {
                            str2 = jsonObject.get("path").getAsString();
                        }
                        c2210b.f129955a = str2;
                    }
                    if (jsonObject.has("text")) {
                        if (!jsonObject.get("text").isJsonNull()) {
                            str3 = jsonObject.get("text").getAsString();
                        }
                        c2210b.f129956b = str3;
                    }
                    String str5 = c2210b.f129955a;
                    if ((str5 == null || str5.trim().isEmpty()) && jsonObject.entrySet().size() == 1) {
                        Map.Entry<String, JsonElement> next = jsonObject.entrySet().iterator().next();
                        c2210b.f129955a = next.getKey();
                        if (next.getValue() != null && !next.getValue().isJsonNull()) {
                            c2210b.f129956b = next.getValue().isJsonPrimitive() ? next.getValue().getAsString() : gson.toJson(next.getValue());
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        return c2210b;
    }
}
