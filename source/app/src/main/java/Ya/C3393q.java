package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3393q extends Wa.a {

    public static final String f29937l = "VectorXWW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3393q();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3393q.class;
        }

        @Override
        public String c() {
            return "VectorXWW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3393q.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3393q() {
        super("VectorXWW", "Vector XWW", ga.H.FLOAT3, "xww");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XWW);
    }
}
