package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class E extends Fa.e {

    public static final String f24118j = "Sin";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new E();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return E.class;
        }

        @Override
        public String c() {
            return "Sin";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, E.class);
        }

        @Override
        public String e() {
            return "Math/Trigonometry";
        }

        @Override
        public String f() {
            return "Sin";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public E() {
        super("Sin");
        this.serializedNodeType = "Sin";
    }

    @Override
    public float G0(float value) {
        return (float) Math.sin(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SIN);
    }
}
