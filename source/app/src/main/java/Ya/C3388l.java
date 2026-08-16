package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3388l extends Wa.a {

    public static final String f29930l = "VectorWYZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3388l();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3388l.class;
        }

        @Override
        public String c() {
            return "VectorWYZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3388l.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector WYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3388l() {
        super("VectorWYZ", "Vector WYZ", ga.H.FLOAT3, "wyz");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_WYZ);
    }
}
