package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class J extends Fa.e {

    public static final String f24128j = "Tan";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new J();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return J.class;
        }

        @Override
        public String c() {
            return "Tan";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, J.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Tan";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public J() {
        super("Tan");
        this.serializedNodeType = "Tan";
    }

    @Override
    public float G0(float value) {
        return (float) Math.tan(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TAN);
    }
}
