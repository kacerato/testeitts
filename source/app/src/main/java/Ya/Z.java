package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class Z extends Wa.a {

    public static final String f29907l = "VectorZWY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new Z();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return Z.class;
        }

        @Override
        public String c() {
            return "VectorZWY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, Z.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public Z() {
        super("VectorZWY", "Vector ZWY", ga.H.FLOAT3, "zwy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZWY);
    }
}
