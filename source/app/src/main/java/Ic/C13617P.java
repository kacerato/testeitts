package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13617P extends ShaderGraphNode {

    public static final String f91796e = "FromViewToWorldSpace";

    public final ShaderGraphSlot[] f91797c;

    public final ShaderGraphSlot[] f91798d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13617P();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13617P.class;
        }

        @Override
        public String c() {
            return C13617P.f91796e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13617P.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "View To World";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13617P() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91797c = new ShaderGraphSlot[]{new ShaderGraphSlot("Vector", c10)};
        this.f91798d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91796e;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = (getWorldFromViewMatrix() * float4(" + g10 + ", 1.0)).xyz;");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91797c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91798d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "View To World";
    }

    @Override
    public boolean y() {
        return false;
    }
}
