package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13687v0 extends AbstractC13644f1 {

    public static final String f92019g = "Min";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13687v0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13687v0.class;
        }

        @Override
        public String c() {
            return "Min";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13687v0.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Min";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13687v0() {
        super("Min", "min");
        this.serializedNodeType = "Min";
    }

    @Override
    public boolean y() {
        return false;
    }
}
