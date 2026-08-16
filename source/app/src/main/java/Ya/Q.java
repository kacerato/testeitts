package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class Q extends Wa.a {

    public static final String f29899l = "VectorYYY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new Q();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return Q.class;
        }

        @Override
        public String c() {
            return "VectorYYY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, Q.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public Q() {
        super("VectorYYY", "Vector YYY", ga.H.FLOAT3, "yyy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YYY);
    }
}
