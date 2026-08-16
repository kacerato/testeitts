package k0;

import com.google.gson.JsonObject;
import java.util.Map;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class w {

    @NotNull
    public final String f94635a;

    @NotNull
    public final Map<String, Object> f94636b;

    public w(@NotNull String name, @NotNull Map<String, ? extends Object> arguments) {
        M.p(name, "name");
        M.p(arguments, "arguments");
        this.f94635a = name;
        this.f94636b = arguments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static w d(w wVar, String str, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = wVar.f94635a;
        }
        if ((i10 & 2) != 0) {
            map = wVar.f94636b;
        }
        return wVar.c(str, map);
    }

    @NotNull
    public final String a() {
        return this.f94635a;
    }

    @NotNull
    public final Map<String, Object> b() {
        return this.f94636b;
    }

    @NotNull
    public final w c(@NotNull String name, @NotNull Map<String, ? extends Object> arguments) {
        M.p(name, "name");
        M.p(arguments, "arguments");
        return new w(name, arguments);
    }

    @NotNull
    public final Map<String, Object> e() {
        return this.f94636b;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof w)) {
            return false;
        }
        w wVar = (w) other;
        return M.g(this.f94635a, wVar.f94635a) && M.g(this.f94636b, wVar.f94636b);
    }

    @NotNull
    public final String f() {
        return this.f94635a;
    }

    @NotNull
    public final JsonObject g() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("type", "function");
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("name", this.f94635a);
        jsonObject2.add(IJavaModelMarker.ARGUMENTS, l.b(this.f94636b));
        jsonObject.add("function", jsonObject2);
        return jsonObject;
    }

    public int hashCode() {
        return (this.f94635a.hashCode() * 31) + this.f94636b.hashCode();
    }

    @NotNull
    public String toString() {
        return "ToolCall(name=" + this.f94635a + ", arguments=" + ((Object) this.f94636b) + ")";
    }
}
