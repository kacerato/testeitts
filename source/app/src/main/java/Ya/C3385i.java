package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3385i extends Wa.a {

    public static final String f29924l = "VectorWYW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3385i();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3385i.class;
        }

        @Override
        public String c() {
            return "VectorWYW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3385i.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WYW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3385i() {
        super("VectorWYW", "Vector WYW", ga.H.FLOAT3, "wyw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WYW);
    }
}
