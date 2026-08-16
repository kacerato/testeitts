package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class f0 extends Wa.a {

    public static final String f29919l = "VectorZYW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new f0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f0.class;
        }

        @Override
        public String c() {
            return "VectorZYW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public f0() {
        super("VectorZYW", "Vector ZYW", ga.H.FLOAT3, "zyw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZYW);
    }
}
