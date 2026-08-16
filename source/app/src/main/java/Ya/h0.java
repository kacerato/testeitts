package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class h0 extends Wa.a {

    public static final String f29923l = "VectorZYY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new h0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return h0.class;
        }

        @Override
        public String c() {
            return "VectorZYY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, h0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZYY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public h0() {
        super("VectorZYY", "Vector ZYY", ga.H.FLOAT3, "zyy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZYY);
    }
}
