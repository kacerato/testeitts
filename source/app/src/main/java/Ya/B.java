package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import yd.C16174f;

public class B extends Wa.a {

    public static final String f29884l = "VectorXYZ";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new B();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return B.class;
        }

        @Override
        public String c() {
            return "VectorXYZ";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, B.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector XYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public B() {
        super("VectorXYZ", "Vector XYZ", ga.H.FLOAT3, C16174f.f130183e);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_XYZ);
    }
}
