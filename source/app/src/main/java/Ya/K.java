package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class K extends Wa.a {

    public static final String f29893l = "VectorYXW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new K();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return K.class;
        }

        @Override
        public String c() {
            return "VectorYXW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, K.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YXW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public K() {
        super("VectorYXW", "Vector YXW", ga.H.FLOAT3, "yxw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YXW);
    }
}
