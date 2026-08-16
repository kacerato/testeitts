package Ya;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class U extends Wa.a {

    public static final String f29902l = "VectorYZX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new U();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return U.class;
        }

        @Override
        public String c() {
            return "VectorYZX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, U.class);
        }

        @Override
        public String e() {
            return "Vector/Number3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public U() {
        super("VectorYZX", "Vector YZX", ga.H.FLOAT3, "yzx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_YZX);
    }
}
