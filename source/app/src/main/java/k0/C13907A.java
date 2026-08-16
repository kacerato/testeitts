package k0;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import pf.H;
import pf.o0;

@t0({"SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,430:1\n1849#2,3:431\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolManager\n*L\n212#1:431,3\n*E\n"})
public final class C13907A {

    @NotNull
    public final List<C> f94406a;

    @NotNull
    public final Map<String, k> f94407b;

    /* JADX WARN: Multi-variable type inference failed */
    public C13907A() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final JsonElement a(@NotNull String functionName, @NotNull JsonObject params) {
        M.p(functionName, "functionName");
        M.p(params, "params");
        try {
            k kVar = this.f94407b.get(functionName);
            if (kVar != null) {
                return l.a(kVar.b(params));
            }
            throw new IllegalArgumentException("Tool not found: " + functionName);
        } catch (Exception e10) {
            return new JsonPrimitive("Error occured. " + ((Object) e10));
        }
    }

    @NotNull
    public final List<C> b() {
        return this.f94406a;
    }

    @NotNull
    public final JsonArray c() {
        JsonArray jsonArray = new JsonArray();
        for (k kVar : this.f94407b.values()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", "function");
            jsonObject.add("function", kVar.a());
            jsonArray.add(jsonObject);
        }
        return jsonArray;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13907A(@NotNull List<? extends C> tools) {
        M.p(tools, "tools");
        this.f94406a = tools;
        Map<String, k> z10 = o0.z();
        Iterator it = tools.iterator();
        while (it.hasNext()) {
            z10 = o0.o0(z10, ((C) it.next()).a());
        }
        this.f94407b = z10;
    }

    public C13907A(List list, int i10, C14026x c14026x) {
        this((i10 & 1) != 0 ? H.J() : list);
    }
}
