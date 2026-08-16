package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class u1 extends ShaderGraphNode {

    public static final String f92014d = "TangentPosition";

    public final ShaderGraphSlot[] f92015c = {new ShaderGraphSlot("Tangent Pos", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new u1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return u1.class;
        }

        @Override
        public String c() {
            return u1.f92014d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, u1.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "Tangent Position";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public u1() {
        this.serializedNodeType = f92014d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        if (stage != com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX) {
            context.d(this, 0, stage, "transpose(getWorldTangentFrame()) * getWorldPosition().xyz", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        } else {
            context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("vertex_tangent_pos.glsl"));
            context.d(this, 0, stage, "sg_vertexTangentPos(v.worldPosition.xyz, v.worldNormal)", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        }
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92015c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Tangent Position";
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
