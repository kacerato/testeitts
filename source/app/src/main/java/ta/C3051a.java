package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3051a extends Fa.e {

    public static final String f24130j = "Abs";

    public class C0576a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3051a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3051a.class;
        }

        @Override
        public String c() {
            return "Abs";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3051a.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Abs";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new C0576a());
    }

    public C3051a() {
        super("Abs");
        this.serializedNodeType = "Abs";
    }

    @Override
    public float G0(float value) {
        return Math.abs(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ABS);
    }
}
