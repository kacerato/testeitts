package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class K extends Fa.e {

    public static final String f24129j = "Truncate";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new K();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return K.class;
        }

        @Override
        public String c() {
            return "Truncate";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, K.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Truncate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public K() {
        super("Truncate");
        this.serializedNodeType = "Truncate";
    }

    @Override
    public float G0(float value) {
        return (int) value;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_TRUNCATE);
    }
}
