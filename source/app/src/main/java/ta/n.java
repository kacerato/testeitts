package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class n extends Fa.e {

    public static final String f24159j = "Frac";

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
            return "Frac";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, n.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Frac";
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
        super("Frac");
        this.serializedNodeType = "Frac";
    }

    @Override
    public float G0(float value) {
        return value - ((float) Math.floor(value));
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_FRAC);
    }
}
