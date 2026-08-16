package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3379c extends Wa.a {

    public static final String f29912l = "VectorWWY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3379c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3379c.class;
        }

        @Override
        public String c() {
            return "VectorWWY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3379c.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3379c() {
        super("VectorWWY", "Vector WWY", ga.H.FLOAT3, "wwy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WWY);
    }
}
