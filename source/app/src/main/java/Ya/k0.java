package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class k0 extends Wa.a {

    public static final String f29929l = "VectorZZX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new k0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return k0.class;
        }

        @Override
        public String c() {
            return "VectorZZX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, k0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public k0() {
        super("VectorZZX", "Vector ZZX", ga.H.FLOAT3, "zzx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZZX);
    }
}
