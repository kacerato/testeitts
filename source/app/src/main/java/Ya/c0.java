package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class c0 extends Wa.a {

    public static final String f29913l = "VectorZXX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new c0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return c0.class;
        }

        @Override
        public String c() {
            return "VectorZXX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, c0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public c0() {
        super("VectorZXX", "Vector ZXX", ga.H.FLOAT3, "zxx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZXX);
    }
}
