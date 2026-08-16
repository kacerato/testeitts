package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3399x extends Wa.a {

    public static final String f29944l = "VectorXXZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3399x();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3399x.class;
        }

        @Override
        public String c() {
            return "VectorXXZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3399x.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XXZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3399x() {
        super("VectorXXZ", "Vector XXZ", ga.H.FLOAT3, "xxz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XXZ);
    }
}
