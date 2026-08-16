package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class F extends Wa.a {

    public static final String f29888l = "VectorXZZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new F();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return F.class;
        }

        @Override
        public String c() {
            return "VectorXZZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, F.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public F() {
        super("VectorXZZ", "Vector XZZ", ga.H.FLOAT3, "xzz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XZZ);
    }
}
