package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class D1 extends AbstractC13653i1 {

    public static final String f91703g = "Truncate";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new D1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return D1.class;
        }

        @Override
        public String c() {
            return "Truncate";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, D1.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Truncate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public D1() {
        super("Truncate", "trunc");
        this.serializedNodeType = "Truncate";
    }
}
