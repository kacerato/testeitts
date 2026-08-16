package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class t extends Fa.b {

    public static final String f24175k = "Min";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new t();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return t.class;
        }

        @Override
        public String c() {
            return "Min";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, t.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Min";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public t() {
        super("Min", "min");
        this.serializedNodeType = "Min";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_MIN);
    }
}
