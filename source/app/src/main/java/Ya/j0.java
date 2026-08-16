package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class j0 extends Wa.a {

    public static final String f29927l = "VectorZZW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new j0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return j0.class;
        }

        @Override
        public String c() {
            return "VectorZZW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public j0() {
        super("VectorZZW", "Vector ZZW", ga.H.FLOAT3, "zzw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZZW);
    }
}
