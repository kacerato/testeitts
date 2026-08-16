package ic;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13612K extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91743e = "FractalNoise";

    public final ShaderGraphSlot[] f91744c;

    public final ShaderGraphSlot[] f91745d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13612K();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13612K.class;
        }

        @Override
        public String c() {
            return C13612K.f91743e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13612K.class);
        }

        @Override
        public String e() {
            return "Noise";
        }

        @Override
        public String f() {
            return "Fractal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13612K() {
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91744c = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("Scale", c10), new ShaderGraphSlot("Octaves", c10)};
        this.f91745d = new ShaderGraphSlot[]{new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, c10)};
        this.serializedNodeType = f91743e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex == 1) {
            return "1.0";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "4.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("perlin.glsl"));
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("fractal.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_fbm(" + g10 + " * " + g11 + ", int(" + g12 + "));");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91744c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91745d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Fractal";
    }
}
