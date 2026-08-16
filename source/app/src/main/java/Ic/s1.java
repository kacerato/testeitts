package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class s1 extends AbstractC13647g1 {

    public static final String f92003g = "Subtract";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new s1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return s1.class;
        }

        @Override
        public String c() {
            return "Subtract";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, s1.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Subtract";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public s1() {
        super("Subtract", "-");
        this.serializedNodeType = "Subtract";
    }

    @Override
    public boolean y() {
        return false;
    }
}
