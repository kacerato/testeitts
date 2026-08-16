package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class Z0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91852e = "Rotate";

    public final ShaderGraphSlot[] f91853c;

    public final ShaderGraphSlot[] f91854d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new Z0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return Z0.class;
        }

        @Override
        public String c() {
            return "Rotate";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, Z0.class);
        }

        @Override
        public String e() {
            return "UV";
        }

        @Override
        public String f() {
            return "Rotate";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public Z0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        this.f91853c = new ShaderGraphSlot[]{new ShaderGraphSlot("UV", c10), new ShaderGraphSlot("Angle", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER), new ShaderGraphSlot("Center", c10)};
        this.f91854d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = "Rotate";
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUV0()";
        }
        if (inputIndex == 1) {
            return "0.0";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "float2(0.5, 0.5)";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("rotate.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@UV@", g10), "@ANGLE@", g11), "@CENTER@", context.g(this, 2, stage, c10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91853c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91854d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Rotate";
    }
}
