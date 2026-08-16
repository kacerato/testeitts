package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class J extends Wa.a {

    public static final String f29892l = "VectorYWZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new J();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return J.class;
        }

        @Override
        public String c() {
            return "VectorYWZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, J.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YWZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public J() {
        super("VectorYWZ", "Vector YWZ", ga.H.FLOAT3, "ywz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YWZ);
    }
}
