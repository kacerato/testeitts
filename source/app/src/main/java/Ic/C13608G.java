package ic;

import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13608G extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91720e = "Film Grain Scratch";

    public final ShaderGraphSlot[] f91721c;

    public final ShaderGraphSlot[] f91722d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13608G();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13608G.class;
        }

        @Override
        public String c() {
            return C13608G.f91720e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13608G.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return C13608G.f91720e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13608G() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91721c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Intensity", c11), new ShaderGraphSlot("Grain Strength", c11), new ShaderGraphSlot("Grain Size", c11), new ShaderGraphSlot("Scratch Strength", c11), new ShaderGraphSlot("Scratch Density", c11), new ShaderGraphSlot("Scratch Width", c11), new ShaderGraphSlot("Flicker Strength", c11), new ShaderGraphSlot("Time", c11)};
        this.f91722d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10)};
        this.serializedNodeType = f91720e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        switch (inputIndex) {
            case 1:
                return "getUV0()";
            case 2:
                return "1.0";
            case 3:
                return Dd.c.f5125q;
            case 4:
                return "0.3";
            case 5:
                return "0.8";
            case 6:
            case 7:
                return "0.4";
            case 8:
                return "0.3";
            case 9:
                return "materialParams.sg_time";
            default:
                return null;
        }
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("film_grain_scratch.glsl"));
        if (!context.k(this, 9)) {
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
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_film_grain_scratch(" + g10 + ", " + g11 + ", " + g12 + ", " + g13 + ", " + g14 + ", " + g15 + ", " + g16 + ", " + g17 + ", " + g18 + ", " + g19 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91721c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91722d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91720e;
    }
}
