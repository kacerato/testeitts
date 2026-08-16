package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class r1 extends AbstractC13647g1 {

    public static final String f91996g = "Subdivide";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new r1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return r1.class;
        }

        @Override
        public String c() {
            return "Subdivide";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, r1.class);
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
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public r1() {
        super("Subdivide", "/");
        this.serializedNodeType = "Subdivide";
    }

    @Override
    public boolean y() {
        return false;
    }
}
