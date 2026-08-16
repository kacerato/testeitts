package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13683t0 extends AbstractC13644f1 {

    public static final String f92007g = "Max";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13683t0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13683t0.class;
        }

        @Override
        public String c() {
            return "Max";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13683t0.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Max";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13683t0() {
        super("Max", "max");
        this.serializedNodeType = "Max";
    }

    @Override
    public boolean y() {
        return false;
    }
}
