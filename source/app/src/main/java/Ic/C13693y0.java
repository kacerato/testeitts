package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13693y0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92041e = "Motion Blur";

    public final ShaderGraphSlot[] f92042c;

    public final ShaderGraphSlot[] f92043d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13693y0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13693y0.class;
        }

        @Override
        public String c() {
            return C13693y0.f92041e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13693y0.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return C13693y0.f92041e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13693y0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("Current Color", c10);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("History Color", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f92042c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Alpha", c11), new ShaderGraphSlot("Reset", c11)};
        this.f92043d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10)};
        this.serializedNodeType = f92041e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 2) {
            return "0.85";
        }
        if (inputIndex != 3) {
            return null;
        }
        return "0.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("motion_blur.glsl"));
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g12 = context.g(this, 2, stage, c11);
        String g13 = context.g(this, 3, stage, c11);
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_motion_blur(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92042c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92043d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f92041e;
    }
}
