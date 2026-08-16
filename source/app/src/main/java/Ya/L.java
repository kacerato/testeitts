package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class L extends Wa.a {

    public static final String f29894l = "VectorYXX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new L();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return L.class;
        }

        @Override
        public String c() {
            return "VectorYXX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, L.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YXX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public L() {
        super("VectorYXX", "Vector YXX", ga.H.FLOAT3, "yxx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YXX);
    }
}
