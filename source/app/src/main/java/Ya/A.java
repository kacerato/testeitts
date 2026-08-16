package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class A extends Wa.a {

    public static final String f29883l = "VectorXYY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new A();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return A.class;
        }

        @Override
        public String c() {
            return "VectorXYY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, A.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XYY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public A() {
        super("VectorXYY", "Vector XYY", ga.H.FLOAT3, "xyy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XYY);
    }
}
