package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class s extends Fa.b {

    public static final String f24174k = "Max";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new s();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return s.class;
        }

        @Override
        public String c() {
            return "Max";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, s.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Max";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public s() {
        super("Max", "max");
        this.serializedNodeType = "Max";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_MAX);
    }
}
