package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class O extends Wa.a {

    public static final String f29897l = "VectorYYW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new O();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return O.class;
        }

        @Override
        public String c() {
            return "VectorYYW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, O.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public O() {
        super("VectorYYW", "Vector YYW", ga.H.FLOAT3, "yyw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YYW);
    }
}
