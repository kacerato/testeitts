package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class b0 extends Wa.a {

    public static final String f29911l = "VectorZXW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new b0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b0.class;
        }

        @Override
        public String c() {
            return "VectorZXW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public b0() {
        super("VectorZXW", "Vector ZXW", ga.H.FLOAT3, "zxw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZXW);
    }
}
