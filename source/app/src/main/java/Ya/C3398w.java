package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3398w extends Wa.a {

    public static final String f29943l = "VectorXXY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3398w();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3398w.class;
        }

        @Override
        public String c() {
            return "VectorXXY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3398w.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XXY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3398w() {
        super("VectorXXY", "Vector XXY", ga.H.FLOAT3, "xxy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XXY);
    }
}
