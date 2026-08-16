package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class G extends Wa.a {

    public static final String f29889l = "VectorYWW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new G();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return G.class;
        }

        @Override
        public String c() {
            return "VectorYWW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, G.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YWW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public G() {
        super("VectorYWW", "Vector YWW", ga.H.FLOAT3, "yww");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YWW);
    }
}
