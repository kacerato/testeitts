package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3391o extends Wa.a {

    public static final String f29935l = "VectorWZY";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3391o();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3391o.class;
        }

        @Override
        public String c() {
            return "VectorWZY";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3391o.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WZY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3391o() {
        super("VectorWZY", "Vector WZY", ga.H.FLOAT3, "wzy");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WZY);
    }
}
