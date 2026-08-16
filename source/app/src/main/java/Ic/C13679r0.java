package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13679r0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91993e = "MatrixRotate";

    public final ShaderGraphSlot[] f91994c;

    public final ShaderGraphSlot[] f91995d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13679r0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13679r0.class;
        }

        @Override
        public String c() {
            return C13679r0.f91993e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13679r0.class);
        }

        @Override
        public String e() {
            return "Math/Matrices";
        }

        @Override
        public String f() {
            return "Rotate (Mat4)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13679r0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        this.f91994c = new ShaderGraphSlot[]{new ShaderGraphSlot("Matrix", c10), new ShaderGraphSlot("Rotation", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};
        this.f91995d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91993e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0 && desiredType == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4) {
            return "mat4(1.0)";
        }
        if (inputIndex == 1 && desiredType == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) {
            return "float3(0.0)";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        for (String str : ("float3 sg_r = radians(" + context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) + ");\nfloat cx = cos(sg_r.x); float sx = sin(sg_r.x);\nfloat cy = cos(sg_r.y); float sy = sin(sg_r.y);\nfloat cz = cos(sg_r.z); float sz = sin(sg_r.z);\nmat4 rx = mat4(float4(1.0,0.0,0.0,0.0), float4(0.0,cx,sx,0.0), float4(0.0,-sx,cx,0.0), float4(0.0,0.0,0.0,1.0));\nmat4 ry = mat4(float4(cy,0.0,-sy,0.0), float4(0.0,1.0,0.0,0.0), float4(sy,0.0,cy,0.0), float4(0.0,0.0,0.0,1.0));\nmat4 rz = mat4(float4(cz,sz,0.0,0.0), float4(-sz,cz,0.0,0.0), float4(0.0,0.0,1.0,0.0), float4(0.0,0.0,0.0,1.0));\nmat4 rot = rz * ry * rx;\n" + context.c(this, 0, stage, c10) + " = rot * " + context.g(this, 0, stage, c10) + ";\n").split("\\n")) {
            if (!str.isEmpty()) {
                context.h(stage, str);
            }
        }
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91994c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91995d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Rotate";
    }

    @Override
    public boolean y() {
        return false;
    }
}
