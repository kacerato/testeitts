package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3060j extends Fa.e {

    public static final String f24155j = "Cos";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3060j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3060j.class;
        }

        @Override
        public String c() {
            return "Cos";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3060j.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Cos";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3060j() {
        super("Cos");
        this.serializedNodeType = "Cos";
    }

    @Override
    public float G0(float value) {
        return (float) Math.cos(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_COS);
    }
}
