package Ta;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public class H extends Fa.c {

    public static final String f24126j = "Subdivide";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new H();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return H.class;
        }

        @Override
        public String c() {
            return "Subdivide";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, H.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Subdivide";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public H() {
        super("Subdivide");
        this.serializedNodeType = "Subdivide";
    }

    @Override
    public float G0(float a10, float b10) {
        if (b10 == 0.0f) {
            return 0.0f;
        }
        return a10 / b10;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SUBDIVIDE);
    }
}
