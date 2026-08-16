package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class N extends Wa.a {

    public static final String f29896l = "VectorYXZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new N();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return N.class;
        }

        @Override
        public String c() {
            return "VectorYXZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, N.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YXZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public N() {
        super("VectorYXZ", "Vector YXZ", ga.H.FLOAT3, "yxz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YXZ);
    }
}
