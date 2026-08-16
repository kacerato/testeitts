package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13611J extends AbstractC13653i1 {

    public static final String f91737g = "Frac";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13611J();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13611J.class;
        }

        @Override
        public String c() {
            return "Frac";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13611J.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Frac";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13611J() {
        super("Frac", "fract");
        this.serializedNodeType = "Frac";
    }

    @Override
    public boolean y() {
        return false;
    }
}
