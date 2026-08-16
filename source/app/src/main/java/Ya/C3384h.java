package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3384h extends Wa.a {

    public static final String f29922l = "VectorWXZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3384h();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3384h.class;
        }

        @Override
        public String c() {
            return "VectorWXZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3384h.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WXZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3384h() {
        super("VectorWXZ", "Vector WXZ", ga.H.FLOAT3, "wxz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WXZ);
    }
}
