package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13614M extends ShaderGraphNode {

    public static final String f91759e = "FromFrustumToViewSpace";

    public final ShaderGraphSlot[] f91760c;

    public final ShaderGraphSlot[] f91761d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13614M();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13614M.class;
        }

        @Override
        public String c() {
            return C13614M.f91759e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13614M.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "Frustum To View";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13614M() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91760c = new ShaderGraphSlot[]{new ShaderGraphSlot("Vector", c10)};
        this.f91761d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91759e;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = (getViewFromClipMatrix() * float4(" + g10 + ", 1.0)).xyz;");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91760c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91761d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Frustum To View";
    }

    @Override
    public boolean y() {
        return false;
    }
}
