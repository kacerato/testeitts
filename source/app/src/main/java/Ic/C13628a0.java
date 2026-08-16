package ic;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13628a0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91856e = "Hash2D";

    public final ShaderGraphSlot[] f91857c = {new ShaderGraphSlot("XY", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2)};

    public final ShaderGraphSlot[] f91858d = {new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13628a0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13628a0.class;
        }

        @Override
        public String c() {
            return C13628a0.f91856e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13628a0.class);
        }

        @Override
        public String e() {
            return "Noise";
        }

        @Override
        public String f() {
            return "Hash 2D";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13628a0() {
        this.serializedNodeType = f91856e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("hash_no_sine.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        context.h(stage, context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER) + " = sg_hash_no_sine_12(" + g10 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91857c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91858d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Hash 2D";
    }
}
