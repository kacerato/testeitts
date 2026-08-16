package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class d0 extends Wa.a {

    public static final String f29915l = "VectorZXY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new d0();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d0.class;
        }

        @Override
        public String c() {
            return "VectorZXY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d0.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZXY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public d0() {
        super("VectorZXY", "Vector ZXY", ga.H.FLOAT3, "zxy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZXY);
    }
}
