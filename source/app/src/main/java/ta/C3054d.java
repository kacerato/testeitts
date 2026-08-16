package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3054d extends Fa.e {

    public static final String f24133j = "Arcsine";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3054d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3054d.class;
        }

        @Override
        public String c() {
            return "Arcsine";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3054d.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Arcsine";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3054d() {
        super("Arcsine");
        this.serializedNodeType = "Arcsine";
    }

    @Override
    public float G0(float value) {
        return (float) Math.asin(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ARCSINE);
    }
}
