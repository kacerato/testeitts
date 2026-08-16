package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class T extends Wa.a {

    public static final String f29901l = "VectorYZW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new T();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return T.class;
        }

        @Override
        public String c() {
            return "VectorYZW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, T.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public T() {
        super("VectorYZW", "Vector YZW", ga.H.FLOAT3, "yzw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YZW);
    }
}
