package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class X extends Wa.a {

    public static final String f29905l = "VectorZWW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new X();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return X.class;
        }

        @Override
        public String c() {
            return "VectorZWW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, X.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public X() {
        super("VectorZWW", "Vector ZWW", ga.H.FLOAT3, "zww");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZWW);
    }
}
