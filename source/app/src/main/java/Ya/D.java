package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class D extends Wa.a {

    public static final String f29886l = "VectorXZX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new D();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return D.class;
        }

        @Override
        public String c() {
            return "VectorXZX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, D.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public D() {
        super("VectorXZX", "Vector XZX", ga.H.FLOAT3, "xzx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XZX);
    }
}
