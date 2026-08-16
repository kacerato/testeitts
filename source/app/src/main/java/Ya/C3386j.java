package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3386j extends Wa.a {

    public static final String f29926l = "VectorWYX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3386j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3386j.class;
        }

        @Override
        public String c() {
            return "VectorWYX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3386j.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WYX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3386j() {
        super("VectorWYX", "Vector WYX", ga.H.FLOAT3, "wyx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WYX);
    }
}
