package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class r extends Fa.e {

    public static final String f24173j = "Log";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new r();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return r.class;
        }

        @Override
        public String c() {
            return "Log";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, r.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Log";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public r() {
        super("Log");
        this.serializedNodeType = "Log";
    }

    @Override
    public float G0(float value) {
        if (value <= 0.0f) {
            return 0.0f;
        }
        return (float) Math.log10(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LOG);
    }
}
