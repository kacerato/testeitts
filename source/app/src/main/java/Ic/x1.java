package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class x1 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92035e = "TilingOffset";

    public final ShaderGraphSlot[] f92036c;

    public final ShaderGraphSlot[] f92037d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new x1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return x1.class;
        }

        @Override
        public String c() {
            return x1.f92035e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, x1.class);
        }

        @Override
        public String e() {
            return "UV";
        }

        @Override
        public String f() {
            return "Tiling And Offset";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public x1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        this.f92036c = new ShaderGraphSlot[]{new ShaderGraphSlot("UV", c10), new ShaderGraphSlot("Tiling", c10), new ShaderGraphSlot("Offset", c10)};
        this.f92037d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f92035e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex == 1) {
            return "float2(1.0)";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "float2(0.0)";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("tiling_offset.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@UV@", g10), "@TILING@", g11), "@OFFSET@", context.g(this, 2, stage, c10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92036c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92037d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Tiling And Offset";
    }
}
