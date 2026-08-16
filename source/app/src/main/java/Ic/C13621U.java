package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13621U extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91826e = "Gaussian Blur";

    public final ShaderGraphSlot[] f91827c;

    public final ShaderGraphSlot[] f91828d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13621U();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13621U.class;
        }

        @Override
        public String c() {
            return C13621U.f91826e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13621U.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return C13621U.f91826e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13621U() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81152f, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("UV", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91827c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Intensity", c11), new ShaderGraphSlot("Blur Radius", c11), new ShaderGraphSlot("Texel Size", c10), new ShaderGraphSlot("Quality", c11)};
        this.f91828d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4)};
        this.serializedNodeType = f91826e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 1) {
            return "getUV0()";
        }
        if (inputIndex == 2) {
            return "1.0";
        }
        if (inputIndex == 3) {
            return Dd.c.f5124p;
        }
        if (inputIndex != 5) {
            return null;
        }
        return "2.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("gaussian_blur.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g11 = context.g(this, 1, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g12 = context.g(this, 2, stage, c11);
        String g13 = context.g(this, 3, stage, c11);
        String g14 = context.g(this, 4, stage, c10);
        String g15 = context.g(this, 5, stage, c11);
        context.h(stage, context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4) + " = sg_gaussian_blur(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91827c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91828d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91826e;
    }
}
