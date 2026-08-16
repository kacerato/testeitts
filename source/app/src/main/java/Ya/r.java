package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class r extends Wa.a {

    public static final String f29938l = "VectorXWX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new r();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return r.class;
        }

        @Override
        public String c() {
            return "VectorXWX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, r.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XWX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public r() {
        super("VectorXWX", "Vector XWX", ga.H.FLOAT3, "xwx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XWX);
    }
}
