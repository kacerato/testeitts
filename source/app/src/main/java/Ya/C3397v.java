package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3397v extends Wa.a {

    public static final String f29942l = "VectorXXX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3397v();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3397v.class;
        }

        @Override
        public String c() {
            return "VectorXXX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3397v.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XXX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3397v() {
        super("VectorXXX", "Vector XXX", ga.H.FLOAT3, "xxx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XXX);
    }
}
