package ic;

import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class F1 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91717e = "VHS Filter";

    public final ShaderGraphSlot[] f91718c;

    public final ShaderGraphSlot[] f91719d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new F1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return F1.class;
        }

        @Override
        public String c() {
            return F1.f91717e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, F1.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return F1.f91717e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public F1() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81152f, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91718c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Intensity", c10), new ShaderGraphSlot("Desaturation", c10), new ShaderGraphSlot("Color Bleed", c10), new ShaderGraphSlot("Scanline Strength", c10), new ShaderGraphSlot("Distortion", c10), new ShaderGraphSlot("Noise Strength", c10), new ShaderGraphSlot("Time", c10), new ShaderGraphSlot("Tracking Strength", c10), new ShaderGraphSlot("Tracking Band Height", c10), new ShaderGraphSlot("Tracking Speed", c10), new ShaderGraphSlot("Tracking Noise", c10)};
        this.f91719d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4)};
        this.serializedNodeType = f91717e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        switch (inputIndex) {
            case 1:
                return "getUV0()";
            case 2:
                return "1.0";
            case 3:
                return "0.4";
            case 4:
                return "0.8";
            case 5:
                return "0.7";
            case 6:
                return "0.05";
            case 7:
                return "0.4";
            case 8:
                return "materialParams.sg_time";
            case 9:
                return "0.8";
            case 10:
                return "0.15";
            case 11:
                return "0.3";
            case 12:
                return "0.6";
            default:
                return null;
        }
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("vhs_filter.glsl"));
        if (!context.k(this, 8)) {
            context.i(new ec.f(MaterialBuilder.r.FLOAT, MaterialBuilder.g.HIGH, com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81392a));
        }
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g12 = context.g(this, 2, stage, c10);
        String g13 = context.g(this, 3, stage, c10);
        String g14 = context.g(this, 4, stage, c10);
        String g15 = context.g(this, 5, stage, c10);
        String g16 = context.g(this, 6, stage, c10);
        String g17 = context.g(this, 7, stage, c10);
        String g18 = context.g(this, 8, stage, c10);
        String g19 = context.g(this, 9, stage, c10);
        String g20 = context.g(this, 10, stage, c10);
        String g21 = context.g(this, 11, stage, c10);
        String g22 = context.g(this, 12, stage, c10);
        context.h(stage, context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4) + " = sg_vhs_filter(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ", " + g17 + ", " + g18 + ", " + g19 + ", " + g20 + ", " + g21 + ", " + g22 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91718c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91719d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91717e;
    }
}
