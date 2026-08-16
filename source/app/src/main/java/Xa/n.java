package Xa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.H;

public class n extends Wa.a {

    public static final String f28104l = "VectorZX";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new n();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return n.class;
        }

        @Override
        public String c() {
            return "VectorZX";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Vector/Number2 Converters";
        }

        @Override
        public String f() {
            return "Vector ZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public n() {
        super("VectorZX", "Vector ZX", H.FLOAT2, "zx");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_VECTOR_ZX);
    }
}
