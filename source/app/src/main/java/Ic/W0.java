package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class W0 extends AbstractC13644f1 {

    public static final String f91840g = "Reflect";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new W0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return W0.class;
        }

        @Override
        public String c() {
            return W0.f91840g;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, W0.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return W0.f91840g;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public W0() {
        super(f91840g, "reflect");
        this.serializedNodeType = f91840g;
    }
}
