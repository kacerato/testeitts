package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13665m1 extends ShaderGraphNode {

    public static final String f91955e = "SmoothStep";

    public final ShaderGraphSlot[] f91956c;

    public final ShaderGraphSlot[] f91957d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13665m1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13665m1.class;
        }

        @Override
        public String c() {
            return "SmoothStep";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13665m1.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return "Smooth Step";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13665m1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("Edge0", c10);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("Edge1", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.DYNAMIC;
        this.f91956c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("In", c11)};
        this.f91957d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c11)};
        this.serializedNodeType = "SmoothStep";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return resolver.b(this, 2);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("smoothstep.glsl"), "@OUT@", context.c(this, 0, stage, D10)), "@EDGE0@", g10), "@EDGE1@", g11), "@IN@", context.g(this, 2, stage, D10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91956c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91957d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Smooth Step";
    }
}
