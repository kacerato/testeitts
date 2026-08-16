package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class v {

    public static final Gson f69945j = new Gson();

    public String f69946a;

    public String f69947b;

    public String f69948c;

    public transient u f69949d;

    public transient e f69950e;

    public transient Map<String, Object> f69951f;

    public transient c f69952g;

    public g[] f69953h;

    public w f69954i;

    public class a implements c {
        public a() {
        }

        @Override
        public String a(JsonObject params, String rawParamsJsonString) {
            return "";
        }
    }

    public class b implements c {

        public final String f69956a;

        public b(final String val$parameterName) {
            this.f69956a = val$parameterName;
        }

        @Override
        public String a(JsonObject params, String rawParamsJsonString) {
            return v.x(params, this.f69956a, "");
        }
    }

    public interface c {
        String a(JsonObject params, String rawParamsJsonString);
    }

    public v(String name) {
        this.f69948c = "";
        this.f69946a = name;
        q();
    }

    public static JsonObject r(String paramsJsonString) {
        if (paramsJsonString == null || paramsJsonString.trim().isEmpty()) {
            return new JsonObject();
        }
        try {
            JsonElement parseString = JsonParser.parseString(paramsJsonString);
            if (parseString == null || !parseString.isJsonObject()) {
                return null;
            }
            return parseString.getAsJsonObject();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String x(JsonObject params, String key, String fallback) {
        JsonElement jsonElement;
        return (params == null || !params.has(key) || (jsonElement = params.get(key)) == null || jsonElement.isJsonNull()) ? fallback : jsonElement.isJsonPrimitive() ? jsonElement.getAsString() : f69945j.toJson(jsonElement);
    }

    public void A(g... specialists) {
        if (specialists == null || specialists.length == 0) {
            this.f69953h = new g[0];
        } else {
            this.f69953h = (g[]) Arrays.copyOf(specialists, specialists.length);
        }
    }

    public void B(final String parameterName) {
        this.f69952g = new b(parameterName);
    }

    public void b(String name, String description, boolean required) {
        d();
        Map<String, Object> m10 = m();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("type", TypedValues.Custom.S_STRING);
        linkedHashMap.put("description", description);
        m10.put(name, linkedHashMap);
        if (required) {
            n().add(name);
        }
    }

    public v c() {
        v vVar = new v(this.f69946a, this.f69948c, this.f69949d);
        vVar.f69947b = this.f69947b;
        vVar.f69954i = this.f69954i;
        vVar.f69952g = this.f69952g;
        g[] gVarArr = this.f69953h;
        if (gVarArr != null) {
            vVar.f69953h = (g[]) Arrays.copyOf(gVarArr, gVarArr.length);
        }
        if (this.f69951f != null) {
            vVar.d();
            vVar.f69951f.putAll(this.f69951f);
        }
        return vVar;
    }

    public final void d() {
        if (this.f69951f != null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f69951f = linkedHashMap;
        linkedHashMap.put("type", "object");
        this.f69951f.put("properties", new LinkedHashMap());
    }

    public String e(String paramsJsonString) {
        JsonObject r10 = r(paramsJsonString);
        if (r10 == null) {
            return paramsJsonString == null ? "" : paramsJsonString;
        }
        c cVar = this.f69952g;
        return cVar != null ? cVar.a(r10, paramsJsonString) : (r10.has("args") && r10.entrySet().size() == 1) ? x(r10, "args", "") : f69945j.toJson((JsonElement) r10);
    }

    public String f() {
        return this.f69947b;
    }

    public u g() {
        return this.f69949d;
    }

    public String h() {
        return this.f69948c;
    }

    public String i() {
        return this.f69946a;
    }

    public String j() {
        String str = this.f69946a;
        return str == null ? "" : str.trim().toLowerCase().replace('.', '_');
    }

    public Map<String, Object> k() {
        d();
        return this.f69951f;
    }

    public e l() {
        if (this.f69950e == null) {
            q();
        }
        return this.f69950e;
    }

    public final Map<String, Object> m() {
        d();
        Object obj = this.f69951f.get("properties");
        if (obj instanceof Map) {
            return (Map) obj;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f69951f.put("properties", linkedHashMap);
        return linkedHashMap;
    }

    public final List<String> n() {
        d();
        Object obj = this.f69951f.get("required");
        if (obj instanceof List) {
            return (List) obj;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f69951f.put("required", steppedArrayList);
        return steppedArrayList;
    }

    public g[] o() {
        g[] gVarArr = this.f69953h;
        return gVarArr == null ? new g[0] : (g[]) Arrays.copyOf(gVarArr, gVarArr.length);
    }

    public w p() {
        return this.f69954i;
    }

    public final void q() {
        this.f69950e = new e(this);
        d();
    }

    public void s(String args) {
        this.f69947b = args;
    }

    public void t(u callback) {
        this.f69949d = callback;
    }

    public void u(String description) {
        this.f69948c = description;
    }

    public void v(String name) {
        this.f69946a = name;
    }

    public void w(w toolToChat) {
        this.f69954i = toolToChat;
    }

    public boolean y(g specialist) {
        g[] gVarArr;
        if (specialist != null && (gVarArr = this.f69953h) != null && gVarArr.length != 0) {
            for (g gVar : gVarArr) {
                if (gVar == specialist) {
                    return true;
                }
            }
        }
        return false;
    }

    public void z() {
        this.f69952g = new a();
    }

    public v(String name, String description, u callback) {
        this.f69946a = name;
        this.f69948c = description;
        this.f69949d = callback;
        q();
    }

    public v(String name, u callback) {
        this.f69948c = "";
        this.f69946a = name;
        this.f69949d = callback;
        q();
    }
}
