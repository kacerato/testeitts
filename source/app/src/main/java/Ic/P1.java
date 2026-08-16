package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class P1 extends ShaderGraphNode {

    public static final String f91802d = "WorldTangent";

    public final ShaderGraphSlot[] f91803c = {new ShaderGraphSlot("World Tangent", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new P1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return P1.class;
        }

        @Override
        public String c() {
            return P1.f91802d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, P1.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "World Tangent";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public P1() {
        this.serializedNodeType = f91802d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        if (stage != com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX) {
            context.d(this, 0, stage, "normalize(getWorldTangentFrame()[0])", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        } else {
            context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("vertex_tangent_from_normal.glsl"));
            context.d(this, 0, stage, "sg_vertexTangentFromNormal(v.worldNormal)", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        }
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91803c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "World Tangent";
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public boolean y() {
        return false;
    }

    @Override
    public boolean z() {
        return false;
    }
}
