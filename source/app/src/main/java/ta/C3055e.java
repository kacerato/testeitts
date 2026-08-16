package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3055e extends Fa.e {

    public static final String f24134j = "Arctangent";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3055e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3055e.class;
        }

        @Override
        public String c() {
            return "Arctangent";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3055e.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Arctangent";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3055e() {
        super("Arctangent");
        this.serializedNodeType = "Arctangent";
    }

    @Override
    public float G0(float value) {
        return (float) Math.atan(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ARCTANGENT);
    }
}
