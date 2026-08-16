package k0;

import ag.C3639v;
import com.google.ai.edge.litertlm.ToolException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import java.lang.annotation.Annotation;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlin.reflect.full.KClasses;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import pf.I;
import pf.n0;
import pf.o0;

public final class z {

    @t0({"SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolKt$tool$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,430:1\n777#2:431\n873#2:432\n1807#2,3:433\n874#2:436\n1586#2:437\n1661#2,3:438\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolKt$tool$1\n*L\n160#1:431\n160#1:432\n160#1:433,3\n160#1:436\n161#1:437\n161#1:438,3\n*E\n"})
    public static final class a extends C {

        public final D f94637a;

        public a(D $toolSet) {
            this.f94637a = $toolSet;
        }

        @Override
        public Map<String, k> a() {
            boolean a10 = j.f94434a.a();
            Collection functions = KClasses.getFunctions(Lf.b.i(this.f94637a.getClass()));
            ArrayList<Wf.h> arrayList = new ArrayList();
            for (Object obj : functions) {
                List<Annotation> annotations = ((Wf.h) obj).getAnnotations();
                if (!(annotations instanceof Collection) || !annotations.isEmpty()) {
                    Iterator<Annotation> it = annotations.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (it.next() instanceof v) {
                            arrayList.add(obj);
                            break;
                        }
                    }
                }
            }
            D d10 = this.f94637a;
            ArrayList arrayList2 = new ArrayList(I.d0(arrayList, 10));
            for (Wf.h hVar : arrayList) {
                String name = hVar.getName();
                if (a10) {
                    name = z.d(name);
                }
                arrayList2.add(v0.a(name, new r(d10, hVar, a10)));
            }
            return o0.D0(arrayList2);
        }
    }

    public static final class b extends C {

        public final o f94638a;

        public static final class a implements k {

            public final JsonObject f94639a;

            public final o f94640b;

            public a(JsonObject $toolDescription, o $openApiTool) {
                this.f94639a = $toolDescription;
                this.f94640b = $openApiTool;
            }

            @Override
            public JsonObject a() {
                return this.f94639a;
            }

            @Override
            public Object b(JsonObject params) {
                M.p(params, "params");
                o oVar = this.f94640b;
                String jsonElement = params.toString();
                M.o(jsonElement, "toString(...)");
                return oVar.b(jsonElement);
            }
        }

        public b(o $openApiTool) {
            this.f94638a = $openApiTool;
        }

        @Override
        public Map<String, k> a() {
            try {
                JsonObject asJsonObject = JsonParser.parseString(this.f94638a.a()).getAsJsonObject();
                M.m(asJsonObject);
                try {
                    String asString = asJsonObject.get("name").getAsString();
                    M.m(asString);
                    return n0.k(v0.a(asString, new a(asJsonObject, this.f94638a)));
                } catch (Throwable th2) {
                    throw new ToolException("Failed to parse field \"name\" as String. " + th2.getMessage(), th2);
                }
            } catch (JsonParseException e10) {
                throw new ToolException("Failed to parse JSON. " + e10.getMessage(), e10);
            }
        }
    }

    public static final String d(String $this$camelToSnakeCase) {
        String lowerCase = new C3639v("(?<=[a-zA-Z])[A-Z]").p($this$camelToSnakeCase, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                CharSequence e10;
                e10 = z.e((ag.r) obj);
                return e10;
            }
        }).toLowerCase(Locale.ROOT);
        M.o(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public static final CharSequence e(ag.r it) {
        M.p(it, "it");
        return ConstantDescs.DEFAULT_NAME + it.getValue();
    }

    public static final String f(String $this$snakeToCamelCase) {
        return new C3639v("_([a-z])").p($this$snakeToCamelCase, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                CharSequence g10;
                g10 = z.g((ag.r) obj);
                return g10;
            }
        });
    }

    public static final CharSequence g(ag.r it) {
        M.p(it, "it");
        String substring = it.getValue().substring(1);
        M.o(substring, "substring(...)");
        String upperCase = substring.toUpperCase(Locale.ROOT);
        M.o(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @NotNull
    public static final C h(@NotNull o openApiTool) {
        M.p(openApiTool, "openApiTool");
        return new b(openApiTool);
    }

    @NotNull
    public static final C i(@NotNull D toolSet) {
        M.p(toolSet, "toolSet");
        return new a(toolSet);
    }
}
