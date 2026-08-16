package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3381e extends Wa.a {

    public static final String f29916l = "VectorWXW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3381e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3381e.class;
        }

        @Override
        public String c() {
            return "VectorWXW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3381e.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WXW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3381e() {
        super("VectorWXW", "Vector WXW", ga.H.FLOAT3, "wxw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WXW);
    }
}
