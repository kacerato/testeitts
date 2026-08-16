package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class e0 extends Wa.a {

    public static final String f29917l = "VectorZXZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new e0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e0.class;
        }

        @Override
        public String c() {
            return "VectorZXZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public e0() {
        super("VectorZXZ", "Vector ZXZ", ga.H.FLOAT3, "zxz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZXZ);
    }
}
