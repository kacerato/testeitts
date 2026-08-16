package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3396u extends Wa.a {

    public static final String f29941l = "VectorXXW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3396u();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3396u.class;
        }

        @Override
        public String c() {
            return "VectorXXW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3396u.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XXW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3396u() {
        super("VectorXXW", "Vector XXW", ga.H.FLOAT3, "xxw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XXW);
    }
}
