package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class l extends Fa.e {

    public static final String f24157j = "Exp";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new l();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return l.class;
        }

        @Override
        public String c() {
            return "Exp";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, l.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Exp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public l() {
        super("Exp");
        this.serializedNodeType = "Exp";
    }

    @Override
    public float G0(float value) {
        return (float) Math.exp(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_EXP);
    }
}
