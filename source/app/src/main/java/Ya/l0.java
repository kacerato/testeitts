package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class l0 extends Wa.a {

    public static final String f29931l = "VectorZZY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new l0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return l0.class;
        }

        @Override
        public String c() {
            return "VectorZZY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, l0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public l0() {
        super("VectorZZY", "Vector ZZY", ga.H.FLOAT3, "zzy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZZY);
    }
}
