package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class z1 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92049e = "Transform";

    public final ShaderGraphSlot[] f92050c;

    public final ShaderGraphSlot[] f92051d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new z1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return z1.class;
        }

        @Override
        public String c() {
            return z1.f92049e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, z1.class);
        }

        @Override
        public String e() {
            return "Math/Matrix";
        }

        @Override
        public String f() {
            return z1.f92049e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public z1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f92050c = new ShaderGraphSlot[]{new ShaderGraphSlot("Vector", c10), new ShaderGraphSlot("Position", c10), new ShaderGraphSlot("Rotation", c10), new ShaderGraphSlot("Scale", c10)};
        this.f92051d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f92049e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 3 && desiredType == com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) {
            return "float3(1.0)";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("transform.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@V@", g10), "@POS@", g11), "@ROT@", g12), "@SCA@", context.g(this, 3, stage, c10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92050c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92051d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f92049e;
    }

    @Override
    public boolean y() {
        return false;
    }
}
