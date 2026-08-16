package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class m0 extends Wa.a {

    public static final String f29933l = "VectorZZZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new m0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return m0.class;
        }

        @Override
        public String c() {
            return "VectorZZZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, m0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public m0() {
        super("VectorZZZ", "Vector ZZZ", ga.H.FLOAT3, "zzz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZZZ);
    }
}
