package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class M0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91762e = "Outline";

    public final ShaderGraphSlot[] f91763c;

    public final ShaderGraphSlot[] f91764d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new M0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return M0.class;
        }

        @Override
        public String c() {
            return "Outline";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, M0.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return "Outline";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public M0() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81152f, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("UV", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        ShaderGraphSlot shaderGraphSlot3 = new ShaderGraphSlot("Line Color", c11);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91763c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, shaderGraphSlot3, new ShaderGraphSlot("Thickness", c12), new ShaderGraphSlot("Threshold", c12), new ShaderGraphSlot("Texel Size", c10)};
        this.f91764d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c11)};
        this.serializedNodeType = "Outline";
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 1) {
            return "getUV0()";
        }
        if (inputIndex == 2) {
            return "float4(0.0, 0.0, 0.0, 1.0)";
        }
        if (inputIndex == 3) {
            return "1.0";
        }
        if (inputIndex != 4) {
            return null;
        }
        return Dd.c.f5125q;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("outline.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g11 = context.g(this, 1, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        String g12 = context.g(this, 2, stage, c11);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g13 = context.g(this, 3, stage, c12);
        String g14 = context.g(this, 4, stage, c12);
        String g15 = context.g(this, 5, stage, c10);
        context.h(stage, context.c(this, 0, stage, c11) + " = sg_outline(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91763c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91764d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Outline";
    }
}
