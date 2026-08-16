package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3380d extends Wa.a {

    public static final String f29914l = "VectorWWZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3380d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3380d.class;
        }

        @Override
        public String c() {
            return "VectorWWZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3380d.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3380d() {
        super("VectorWWZ", "Vector WWZ", ga.H.FLOAT3, "wwz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WWZ);
    }
}
