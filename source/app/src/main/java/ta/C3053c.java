package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3053c extends Fa.e {

    public static final String f24132j = "Arccosine";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3053c();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3053c.class;
        }

        @Override
        public String c() {
            return "Arccosine";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3053c.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Arccosine";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3053c() {
        super("Arccosine");
        this.serializedNodeType = "Arccosine";
    }

    @Override
    public float G0(float value) {
        return (float) Math.acos(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ARCCOSINE);
    }
}
