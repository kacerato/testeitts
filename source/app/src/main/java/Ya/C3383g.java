package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3383g extends Wa.a {

    public static final String f29920l = "VectorWXY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3383g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3383g.class;
        }

        @Override
        public String c() {
            return "VectorWXY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3383g.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WXY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3383g() {
        super("VectorWXY", "Vector WXY", ga.H.FLOAT3, "wxy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WXY);
    }
}
