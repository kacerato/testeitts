package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class i0 extends Wa.a {

    public static final String f29925l = "VectorZYZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new i0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return i0.class;
        }

        @Override
        public String c() {
            return "VectorZYZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, i0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public i0() {
        super("VectorZYZ", "Vector ZYZ", ga.H.FLOAT3, "zyz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZYZ);
    }
}
