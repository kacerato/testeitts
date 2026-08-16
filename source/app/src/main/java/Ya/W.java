package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class W extends Wa.a {

    public static final String f29904l = "VectorYZZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new W();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return W.class;
        }

        @Override
        public String c() {
            return "VectorYZZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, W.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public W() {
        super("VectorYZZ", "Vector YZZ", ga.H.FLOAT3, "yzz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YZZ);
    }
}
