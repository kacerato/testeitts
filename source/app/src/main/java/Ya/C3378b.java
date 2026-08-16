package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3378b extends Wa.a {

    public static final String f29910l = "VectorWWX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3378b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3378b.class;
        }

        @Override
        public String c() {
            return "VectorWWX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3378b.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WWX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3378b() {
        super("VectorWWX", "Vector WWX", ga.H.FLOAT3, "wwx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WWX);
    }
}
