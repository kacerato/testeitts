package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class S extends Wa.a {

    public static final String f29900l = "VectorYYZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new S();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return S.class;
        }

        @Override
        public String c() {
            return "VectorYYZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, S.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public S() {
        super("VectorYYZ", "Vector YYZ", ga.H.FLOAT3, "yyz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YYZ);
    }
}
