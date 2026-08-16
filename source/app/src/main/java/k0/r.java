package k0;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import java.lang.annotation.Annotation;
import java.lang.constant.Constable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t0;
import kotlin.reflect.KClass;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.I;
import pf.S;
import pf.o0;

@t0({"SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ReflectionTool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,430:1\n1#2:431\n1300#3,2:432\n1315#3,4:434\n1586#3:445\n1661#3,3:446\n534#4,7:438\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ReflectionTool\n*L\n332#1:432,2\n332#1:434,4\n361#1:445\n361#1:446,3\n343#1:438,7\n*E\n"})
public final class r implements k {

    @NotNull
    public static final a f94629d = new a(null);

    @NotNull
    public static final Map<KClass<? extends Object>, String> f94630e = o0.W(v0.a(n0.d(String.class), TypedValues.Custom.S_STRING), v0.a(n0.d(Integer.TYPE), TypedValues.Custom.S_INT), v0.a(n0.d(Boolean.TYPE), TypedValues.Custom.S_BOOLEAN), v0.a(n0.d(Float.TYPE), "number"), v0.a(n0.d(Double.TYPE), "number"), v0.a(n0.d(List.class), "array"));

    @NotNull
    public final Object f94631a;

    @NotNull
    public final Wf.h<?> f94632b;

    public final boolean f94633c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public r(@NotNull Object instance, @NotNull Wf.h<?> kFunction, boolean useSnakeCase) {
        M.p(instance, "instance");
        M.p(kFunction, "kFunction");
        this.f94631a = instance;
        this.f94632b = kFunction;
        this.f94633c = useSnakeCase;
    }

    public static final CharSequence h(KClass it) {
        M.p(it, "it");
        String simpleName = it.getSimpleName();
        return simpleName != null ? simpleName : "";
    }

    @Override
    @NotNull
    public JsonObject a() {
        Annotation annotation;
        Annotation annotation2;
        String description;
        Iterator<Annotation> it = this.f94632b.getAnnotations().iterator();
        while (true) {
            if (!it.hasNext()) {
                annotation = null;
                break;
            }
            annotation = it.next();
            if (annotation instanceof v) {
                break;
            }
        }
        v vVar = annotation instanceof v ? (v) annotation : null;
        if (vVar == null) {
            return new JsonObject();
        }
        String description2 = vVar.description();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", this.f94633c ? z.d(this.f94632b.getName()) : this.f94632b.getName());
        jsonObject.addProperty("description", description2);
        List<Wf.m> g22 = S.g2(this.f94632b.getParameters(), 1);
        if (!g22.isEmpty()) {
            JsonObject jsonObject2 = new JsonObject();
            for (Wf.m mVar : g22) {
                Iterator<Annotation> it2 = mVar.getAnnotations().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        annotation2 = null;
                        break;
                    }
                    annotation2 = it2.next();
                    if (annotation2 instanceof B) {
                        break;
                    }
                }
                B b10 = annotation2 instanceof B ? (B) annotation2 : null;
                JsonObject g10 = g(mVar.getType());
                if (b10 != null && (description = b10.description()) != null) {
                    g10.addProperty("description", description);
                }
                if (mVar.getType().y()) {
                    g10.addProperty("nullable", Boolean.TRUE);
                }
                jsonObject2.add(j(mVar), g10);
            }
            JsonArray jsonArray = new JsonArray();
            for (Wf.m mVar2 : g22) {
                if (!mVar2.w()) {
                    jsonArray.add(j(mVar2));
                }
            }
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty("type", "object");
            jsonObject3.add("properties", jsonObject2);
            if (!jsonArray.isEmpty()) {
                jsonObject3.add("required", jsonArray);
            }
            jsonObject.add("parameters", jsonObject3);
        }
        return jsonObject;
    }

    @Override
    @Nullable
    public Object b(@NotNull JsonObject params) {
        Object obj;
        M.p(params, "params");
        List<Wf.m> parameters = this.f94632b.getParameters();
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(pf.n0.j(I.d0(parameters, 10)), 16));
        for (Wf.m mVar : parameters) {
            Wf.m mVar2 = mVar;
            if (mVar2.getIndex() == 0) {
                obj = this.f94631a;
            } else if (mVar2.getName() != null && params.has(j(mVar2))) {
                JsonElement jsonElement = params.get(j(mVar2));
                M.m(jsonElement);
                obj = d(jsonElement, mVar2.getType());
            } else {
                if (!mVar2.w()) {
                    throw new IllegalArgumentException("Missing parameter: " + j(mVar2));
                }
                obj = null;
            }
            linkedHashMap.put(mVar, obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (entry.getValue() != null) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        return this.f94632b.callBy(linkedHashMap2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Collection, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.gson.JsonElement] */
    public final Object d(JsonElement jsonElement, Wf.r rVar) {
        Constable constable;
        Wf.f E10 = rVar.E();
        if (M.g(E10, n0.d(List.class)) && (jsonElement instanceof JsonArray)) {
            Wf.t tVar = (Wf.t) S.L2(rVar.getArguments());
            Wf.r g10 = tVar != null ? tVar.g() : null;
            Iterable<JsonElement> iterable = (Iterable) jsonElement;
            ?? arrayList = new ArrayList(I.d0(iterable, 10));
            for (JsonElement jsonElement2 : iterable) {
                M.m(jsonElement2);
                M.m(g10);
                arrayList.add(d(jsonElement2, g10));
            }
            constable = arrayList;
        } else {
            if (M.g(E10, n0.d(Integer.TYPE)) && (jsonElement instanceof JsonPrimitive)) {
                JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
                if (jsonPrimitive.isNumber()) {
                    constable = Integer.valueOf(jsonPrimitive.getAsInt());
                }
            }
            if (M.g(E10, n0.d(Float.TYPE)) && (jsonElement instanceof JsonPrimitive)) {
                JsonPrimitive jsonPrimitive2 = (JsonPrimitive) jsonElement;
                if (jsonPrimitive2.isNumber()) {
                    constable = Float.valueOf(jsonPrimitive2.getAsFloat());
                }
            }
            if (M.g(E10, n0.d(Double.TYPE)) && (jsonElement instanceof JsonPrimitive)) {
                JsonPrimitive jsonPrimitive3 = (JsonPrimitive) jsonElement;
                if (jsonPrimitive3.isNumber()) {
                    constable = Double.valueOf(jsonPrimitive3.getAsDouble());
                }
            }
            if (M.g(E10, n0.d(String.class)) && (jsonElement instanceof JsonPrimitive)) {
                JsonPrimitive jsonPrimitive4 = (JsonPrimitive) jsonElement;
                if (jsonPrimitive4.isString()) {
                    constable = jsonPrimitive4.getAsString();
                }
            }
            constable = jsonElement;
            if (M.g(E10, n0.d(Boolean.TYPE))) {
                boolean z10 = jsonElement instanceof JsonPrimitive;
                constable = jsonElement;
                if (z10) {
                    JsonPrimitive jsonPrimitive5 = (JsonPrimitive) jsonElement;
                    constable = jsonElement;
                    if (jsonPrimitive5.isBoolean()) {
                        constable = Boolean.valueOf(jsonPrimitive5.getAsBoolean());
                    }
                }
            }
        }
        M.m(constable);
        return constable;
    }

    @NotNull
    public final Object e() {
        return this.f94631a;
    }

    @NotNull
    public final Wf.h<?> f() {
        return this.f94632b;
    }

    public final JsonObject g(Wf.r type) {
        Wf.f E10 = type.E();
        Map<KClass<? extends Object>, String> map = f94630e;
        String str = map.get(E10);
        if (str == null) {
            throw new IllegalArgumentException("Unsupported type: " + ((Object) E10) + ". Allowed types are: " + S.r3(map.o(), null, null, null, 0, null, new Mf.l() {
                @Override
                public final Object invoke(Object obj) {
                    CharSequence h10;
                    h10 = r.h((KClass) obj);
                    return h10;
                }
            }, 31, null));
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("type", str);
        if (M.g(E10, n0.d(List.class))) {
            Wf.t tVar = (Wf.t) S.L2(type.getArguments());
            Wf.r g10 = tVar != null ? tVar.g() : null;
            if (g10 == null) {
                throw new IllegalArgumentException("List type argument is missing.");
            }
            jsonObject.add(FirebaseAnalytics.d.f67706j0, g(g10));
        }
        return jsonObject;
    }

    public final boolean i() {
        return this.f94633c;
    }

    public final String j(Wf.m $this$toModelParamName) {
        boolean z10 = this.f94633c;
        String name = $this$toModelParamName.getName();
        M.m(name);
        return z10 ? z.d(name) : name;
    }
}
