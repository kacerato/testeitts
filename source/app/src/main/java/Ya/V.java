package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class V extends Wa.a {

    public static final String f29903l = "VectorYZY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new V();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return V.class;
        }

        @Override
        public String c() {
            return "VectorYZY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, V.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public V() {
        super("VectorYZY", "Vector YZY", ga.H.FLOAT3, "yzy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YZY);
    }
}
