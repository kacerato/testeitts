package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C extends Wa.a {

    public static final String f29885l = "VectorXZW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C.class;
        }

        @Override
        public String c() {
            return "VectorXZW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C() {
        super("VectorXZW", "Vector XZW", ga.H.FLOAT3, "xzw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XZW);
    }
}
