package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3400y extends Wa.a {

    public static final String f29945l = "VectorXYW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3400y();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3400y.class;
        }

        @Override
        public String c() {
            return "VectorXYW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3400y.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XYW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3400y() {
        super("VectorXYW", "Vector XYW", ga.H.FLOAT3, "xyw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XYW);
    }
}
