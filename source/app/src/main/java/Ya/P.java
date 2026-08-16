package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class P extends Wa.a {

    public static final String f29898l = "VectorYYX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new P();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return P.class;
        }

        @Override
        public String c() {
            return "VectorYYX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, P.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public P() {
        super("VectorYYX", "Vector YYX", ga.H.FLOAT3, "yyx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YYX);
    }
}
