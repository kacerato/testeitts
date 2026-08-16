package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13668n1 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91964e = "Spherize";

    public final ShaderGraphSlot[] f91965c;

    public final ShaderGraphSlot[] f91966d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13668n1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13668n1.class;
        }

        @Override
        public String c() {
            return C13668n1.f91964e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13668n1.class);
        }

        @Override
        public String e() {
            return "UV/Distortion";
        }

        @Override
        public String f() {
            return C13668n1.f91964e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13668n1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        this.f91965c = new ShaderGraphSlot[]{new ShaderGraphSlot("UV", c10), new ShaderGraphSlot("Center", c10), new ShaderGraphSlot("Strength", c10)};
        this.f91966d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91964e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex == 1) {
            return "float2(0.5, 0.5)";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "float2(0.0)";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("spherize.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@UV@", g10), "@CENTER@", g11), "@STRENGTH@", context.g(this, 2, stage, c10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91965c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91966d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91964e;
    }
}
