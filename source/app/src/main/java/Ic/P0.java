package ic;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class P0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91799e = "PerlinNoise";

    public final ShaderGraphSlot[] f91800c;

    public final ShaderGraphSlot[] f91801d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new P0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return P0.class;
        }

        @Override
        public String c() {
            return P0.f91799e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, P0.class);
        }

        @Override
        public String e() {
            return "Noise";
        }

        @Override
        public String f() {
            return "Perlin Noise";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public P0() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91800c = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("Scale", c10)};
        this.f91801d = new ShaderGraphSlot[]{new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, c10)};
        this.serializedNodeType = f91799e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex != 1) {
            return null;
        }
        return "1.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("perlin.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g11 = context.g(this, 1, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_perlin2d(" + g10 + " * " + g11 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91800c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91801d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Perlin Noise";
    }
}
