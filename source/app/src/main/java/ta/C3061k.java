package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3061k extends Fa.e {

    public static final String f24156j = "DiscardDecimals";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3061k();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3061k.class;
        }

        @Override
        public String c() {
            return C3061k.f24156j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3061k.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Discard Decimals";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3061k() {
        super("Discard Decimals");
        this.serializedNodeType = f24156j;
    }

    @Override
    public float G0(float value) {
        return (int) value;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_DISCARD_DECIMALS);
    }
}
