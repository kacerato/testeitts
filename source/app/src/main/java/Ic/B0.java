package ic;

import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class B0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91684e = "Night Vision";

    public final ShaderGraphSlot[] f91685c;

    public final ShaderGraphSlot[] f91686d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new B0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return B0.class;
        }

        @Override
        public String c() {
            return B0.f91684e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, B0.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return B0.f91684e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public B0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91685c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Intensity", c11), new ShaderGraphSlot("Brightness", c11), new ShaderGraphSlot("Contrast", c11), new ShaderGraphSlot("Noise Strength", c11), new ShaderGraphSlot("Scanline Strength", c11), new ShaderGraphSlot("Scanline Count", c11), new ShaderGraphSlot("Vignette Strength", c11), new ShaderGraphSlot("Aspect", c11), new ShaderGraphSlot("Tint Color", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3), new ShaderGraphSlot("Time", c11)};
        this.f91686d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10)};
        this.serializedNodeType = f91684e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        switch (inputIndex) {
            case 1:
                return "getUV0()";
            case 2:
                return "1.0";
            case 3:
                return "0.1";
            case 4:
                return "1.5";
            case 5:
                return "0.4";
            case 6:
                return "0.3";
            case 7:
                return "480.0";
            case 8:
                return "0.7";
            case 9:
                return "1.0";
            case 10:
                return "float3(0.39215687, 1.0, 0.54901963)";
            case 11:
                return "materialParams.sg_time";
            default:
                return null;
        }
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("night_vision.glsl"));
        if (!context.k(this, 11)) {
            context.i(new ec.f(MaterialBuilder.r.FLOAT, MaterialBuilder.g.HIGH, com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81392a));
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g12 = context.g(this, 2, stage, c11);
        String g13 = context.g(this, 3, stage, c11);
        String g14 = context.g(this, 4, stage, c11);
        String g15 = context.g(this, 5, stage, c11);
        String g16 = context.g(this, 6, stage, c11);
        String g17 = context.g(this, 7, stage, c11);
        String g18 = context.g(this, 8, stage, c11);
        String g19 = context.g(this, 9, stage, c11);
        String g20 = context.g(this, 10, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        String g21 = context.g(this, 11, stage, c11);
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_night_vision(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ", " + g17 + ", " + g18 + ", " + g19 + ", " + g20 + ", " + g21 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91685c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91686d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91684e;
    }
}
