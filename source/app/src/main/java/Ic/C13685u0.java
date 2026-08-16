package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13685u0 extends ShaderGraphNode {

    public static final String f92012d = "MeshUV";

    public final ShaderGraphSlot[] f92013c = {new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13685u0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13685u0.class;
        }

        @Override
        public String c() {
            return C13685u0.f92012d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13685u0.class);
        }

        @Override
        public String e() {
            return "Input/UV";
        }

        @Override
        public String f() {
            return "Mesh UV";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13685u0() {
        this.serializedNodeType = f92012d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, stage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX ? "v.uv0" : "getUV0()", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92013c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Mesh UV";
    }

    @Override
    public boolean z() {
        return true;
    }
}
