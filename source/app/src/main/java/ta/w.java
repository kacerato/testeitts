package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class w extends Fa.e {

    public static final String f24178j = "NaturalLog";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new w();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return w.class;
        }

        @Override
        public String c() {
            return "NaturalLog";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, w.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Natural Log";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public w() {
        super("Natural Log");
        this.serializedNodeType = "NaturalLog";
    }

    @Override
    public float G0(float value) {
        if (value <= 0.0f) {
            return 0.0f;
        }
        return (float) Math.log(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_NATURAL_LOG);
    }
}
