package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class C3057g extends Fa.e {

    public static final String f24145j = "Ceil";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C3057g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C3057g.class;
        }

        @Override
        public String c() {
            return "Ceil";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C3057g.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Ceil";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C3057g() {
        super("Ceil");
        this.serializedNodeType = "Ceil";
    }

    @Override
    public float G0(float value) {
        return (float) Math.ceil(value);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_CEIL);
    }
}
