package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3394s extends Wa.a {

    public static final String f29939l = "VectorXWY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3394s();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3394s.class;
        }

        @Override
        public String c() {
            return "VectorXWY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3394s.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3394s() {
        super("VectorXWY", "Vector XWY", ga.H.FLOAT3, "xwy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XWY);
    }
}
