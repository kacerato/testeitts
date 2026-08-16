package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3392p extends Wa.a {

    public static final String f29936l = "VectorWZZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3392p();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3392p.class;
        }

        @Override
        public String c() {
            return "VectorWZZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3392p.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WZZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3392p() {
        super("VectorWZZ", "Vector WZZ", ga.H.FLOAT3, "wzz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WZZ);
    }
}
