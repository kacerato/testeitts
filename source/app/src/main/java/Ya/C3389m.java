package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3389m extends Wa.a {

    public static final String f29932l = "VectorWZW";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3389m();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3389m.class;
        }

        @Override
        public String c() {
            return "VectorWZW";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3389m.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3389m() {
        super("VectorWZW", "Vector WZW", ga.H.FLOAT3, "wzw");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WZW);
    }
}
