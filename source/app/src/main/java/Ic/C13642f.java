package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13642f extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91890e = "Barrel Distortion";

    public final ShaderGraphSlot[] f91891c;

    public final ShaderGraphSlot[] f91892d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13642f();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13642f.class;
        }

        @Override
        public String c() {
            return C13642f.f91890e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13642f.class);
        }

        @Override
        public String e() {
            return "PostProcess";
        }

        @Override
        public String f() {
            return "Lens Distortion (Barrel)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13642f() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("UV", c10);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("Center", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91891c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Strength", c11), new ShaderGraphSlot("Aspect", c11), new ShaderGraphSlot("K Values", c10)};
        this.f91892d = new ShaderGraphSlot[]{new ShaderGraphSlot("UV", c10)};
        this.serializedNodeType = f91890e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex == 1) {
            return "float2(0.5)";
        }
        if (inputIndex == 2 || inputIndex == 3) {
            return "1.0";
        }
        if (inputIndex != 4) {
            return null;
        }
        return "float2(0.165, 0.0)";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("lens_distortion.glsl"));
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g12 = context.g(this, 2, stage, c11);
        String g13 = context.g(this, 3, stage, c11);
        String g14 = context.g(this, 4, stage, c10);
        String c12 = context.c(this, 0, stage, c10);
        context.h(stage, c12 + " = sg_lens_distortion_uv(" + g10 + ", " + g11 + ", " + ("-abs(" + g12 + ")") + ", " + g13 + ", " + g14 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91891c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91892d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Lens Distortion (Barrel)";
    }
}
