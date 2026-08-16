package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13657k extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91935e = "Cavity Ridge Valley";

    public final ShaderGraphSlot[] f91936c;

    public final ShaderGraphSlot[] f91937d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13657k();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13657k.class;
        }

        @Override
        public String c() {
            return C13657k.f91935e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13657k.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return C13657k.f91935e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13657k() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81152f, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("UV", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        ShaderGraphSlot shaderGraphSlot3 = new ShaderGraphSlot("Intensity", c11);
        ShaderGraphSlot shaderGraphSlot4 = new ShaderGraphSlot("Ridge Strength", c11);
        ShaderGraphSlot shaderGraphSlot5 = new ShaderGraphSlot("Valley Strength", c11);
        ShaderGraphSlot shaderGraphSlot6 = new ShaderGraphSlot("Radius", c11);
        ShaderGraphSlot shaderGraphSlot7 = new ShaderGraphSlot("Texel Size", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91936c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, shaderGraphSlot3, shaderGraphSlot4, shaderGraphSlot5, shaderGraphSlot6, shaderGraphSlot7, new ShaderGraphSlot("Ridge Color", c12), new ShaderGraphSlot("Valley Color", c12)};
        this.f91937d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4)};
        this.serializedNodeType = f91935e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        switch (inputIndex) {
            case 1:
                return "getUV0()";
            case 2:
            case 3:
            case 4:
            case 5:
                return "1.0";
            case 6:
            default:
                return null;
            case 7:
                return "float3(1.0)";
            case 8:
                return "float3(0.0)";
        }
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("cavity_ridge_valley.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g11 = context.g(this, 1, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g12 = context.g(this, 2, stage, c11);
        String g13 = context.g(this, 3, stage, c11);
        String g14 = context.g(this, 4, stage, c11);
        String g15 = context.g(this, 5, stage, c11);
        String g16 = context.g(this, 6, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g17 = context.g(this, 7, stage, c12);
        String g18 = context.g(this, 8, stage, c12);
        context.h(stage, context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4) + " = sg_cavity_ridge_valley(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ", " + g17 + ", " + g18 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91936c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91937d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91935e;
    }
}
