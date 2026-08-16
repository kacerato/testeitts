package ic;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class O0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91791e = "PerlinNoise3D";

    public final ShaderGraphSlot[] f91792c;

    public final ShaderGraphSlot[] f91793d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new O0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return O0.class;
        }

        @Override
        public String c() {
            return O0.f91791e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, O0.class);
        }

        @Override
        public String e() {
            return "Noise";
        }

        @Override
        public String f() {
            return "Perlin Noise 3D";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public O0() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("Position", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91792c = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("Scale", c10)};
        this.f91793d = new ShaderGraphSlot[]{new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, c10)};
        this.serializedNodeType = f91791e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "float3(getUV0(), 0.0)";
        }
        if (inputIndex != 1) {
            return null;
        }
        return "1.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("perlin3d.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g11 = context.g(this, 1, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_perlin3d_node(" + g10 + " * " + g11 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91792c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91793d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Perlin Noise 3D";
    }
}
