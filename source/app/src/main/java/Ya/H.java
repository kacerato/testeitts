package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class H extends Wa.a {

    public static final String f29890l = "VectorYWX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new H();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return H.class;
        }

        @Override
        public String c() {
            return "VectorYWX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, H.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YWX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public H() {
        super("VectorYWX", "Vector YWX", ga.H.FLOAT3, "ywx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YWX);
    }
}
