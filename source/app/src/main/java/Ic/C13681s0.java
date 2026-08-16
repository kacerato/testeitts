package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13681s0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92000e = "MatrixScale";

    public final ShaderGraphSlot[] f92001c;

    public final ShaderGraphSlot[] f92002d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13681s0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13681s0.class;
        }

        @Override
        public String c() {
            return C13681s0.f92000e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13681s0.class);
        }

        @Override
        public String e() {
            return "Math/Matrices";
        }

        @Override
        public String f() {
            return "Scale (Mat4)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13681s0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        this.f92001c = new ShaderGraphSlot[]{new ShaderGraphSlot("Matrix", c10), new ShaderGraphSlot("Scale", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};
        this.f92002d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f92000e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0 && desiredType == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4) {
            return "mat4(1.0)";
        }
        if (inputIndex == 1 && desiredType == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) {
            return "float3(1.0)";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
        String c11 = context.c(this, 0, stage, c10);
        context.h(stage, "mat4 sg_s = mat4(float4(" + g11 + ".x,0.0,0.0,0.0), float4(0.0," + g11 + ".y,0.0,0.0), float4(0.0,0.0," + g11 + ".z,0.0), float4(0.0,0.0,0.0,1.0));");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c11);
        sb2.append(" = sg_s * ");
        sb2.append(g10);
        sb2.append(";");
        context.h(stage, sb2.toString());
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92001c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92002d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Scale";
    }

    @Override
    public boolean y() {
        return false;
    }
}
