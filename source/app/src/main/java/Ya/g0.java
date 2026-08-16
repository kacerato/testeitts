package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class g0 extends Wa.a {

    public static final String f29921l = "VectorZYX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new g0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return g0.class;
        }

        @Override
        public String c() {
            return "VectorZYX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, g0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public g0() {
        super("VectorZYX", "Vector ZYX", ga.H.FLOAT3, "zyx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZYX);
    }
}
