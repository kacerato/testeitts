package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3377a extends Wa.a {

    public static final String f29908l = "VectorWWW";

    public class C0801a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3377a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3377a.class;
        }

        @Override
        public String c() {
            return "VectorWWW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3377a.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WWW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new C0801a());
    }

    public C3377a() {
        super("VectorWWW", "Vector WWW", ga.H.FLOAT3, "www");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WWW);
    }
}
