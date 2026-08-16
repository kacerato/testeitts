package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13609H extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91726e = "Flipbook";

    public final ShaderGraphSlot[] f91727c;

    public final ShaderGraphSlot[] f91728d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13609H();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13609H.class;
        }

        @Override
        public String c() {
            return C13609H.f91726e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13609H.class);
        }

        @Override
        public String e() {
            return "UV";
        }

        @Override
        public String f() {
            return C13609H.f91726e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13609H() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("UV", c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91727c = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("Columns", c11), new ShaderGraphSlot("Rows", c11), new ShaderGraphSlot("Frame", c11)};
        this.f91728d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91726e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex == 1 || inputIndex == 2) {
            return "1.0";
        }
        if (inputIndex != 3) {
            return null;
        }
        return "0.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g10 = context.g(this, 0, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g11 = context.g(this, 1, stage, c11);
        String g12 = context.g(this, 2, stage, c11);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("flipbook.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@UV@", g10), "@COLUMNS@", g11), "@ROWS@", g12), W7.b.f27301a, context.g(this, 3, stage, c11)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91727c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91728d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91726e;
    }
}
