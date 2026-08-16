package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3395t extends Wa.a {

    public static final String f29940l = "VectorXWZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3395t();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3395t.class;
        }

        @Override
        public String c() {
            return "VectorXWZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3395t.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3395t() {
        super("VectorXWZ", "Vector XWZ", ga.H.FLOAT3, "xwz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XWZ);
    }
}
