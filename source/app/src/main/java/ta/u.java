package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class u extends Fa.b {

    public static final String f24176k = "Modulo";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new u();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return u.class;
        }

        @Override
        public String c() {
            return "Modulo";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, u.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Modulo";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public u() {
        super("Modulo", "mod");
        this.serializedNodeType = "Modulo";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_MODULO);
    }
}
