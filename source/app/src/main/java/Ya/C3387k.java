package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3387k extends Wa.a {

    public static final String f29928l = "VectorWYY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3387k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3387k.class;
        }

        @Override
        public String c() {
            return "VectorWYY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3387k.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WYY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3387k() {
        super("VectorWYY", "Vector WYY", ga.H.FLOAT3, "wyy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WYY);
    }
}
