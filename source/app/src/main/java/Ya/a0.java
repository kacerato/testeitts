package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class a0 extends Wa.a {

    public static final String f29909l = "VectorZWZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new a0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a0.class;
        }

        @Override
        public String c() {
            return "VectorZWZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public a0() {
        super("VectorZWZ", "Vector ZWZ", ga.H.FLOAT3, "zwz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZWZ);
    }
}
