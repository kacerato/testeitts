package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class E extends Wa.a {

    public static final String f29887l = "VectorXZY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new E();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return E.class;
        }

        @Override
        public String c() {
            return "VectorXZY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, E.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XZY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public E() {
        super("VectorXZY", "Vector XZY", ga.H.FLOAT3, "xzy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XZY);
    }
}
