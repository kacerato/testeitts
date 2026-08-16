package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C12815a;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13690x extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92031e = "Displacement";

    public final ShaderGraphSlot[] f92032c;

    public final ShaderGraphSlot[] f92033d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13690x();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13690x.class;
        }

        @Override
        public String c() {
            return C13690x.f92031e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13690x.class);
        }

        @Override
        public String e() {
            return "Vertex";
        }

        @Override
        public String f() {
            return C13690x.f92031e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13690x() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
        this.f92032c = new ShaderGraphSlot[]{new ShaderGraphSlot("Position", c10, wVar), new ShaderGraphSlot("Normal", c10, wVar), new ShaderGraphSlot("Height", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER, wVar)};
        this.f92033d = new ShaderGraphSlot[]{new ShaderGraphSlot("Position", c10)};
        this.serializedNodeType = f92031e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getUserWorldPosition().xyz";
        }
        if (inputIndex == 1) {
            return "getWorldNormalVector()";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "0.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        String g10 = context.k(this, 0) ? context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) : C12815a.d(stage);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("displacement.glsl"), "@OUT@", context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)), "@POS@", g10), "@NORMAL@", context.k(this, 1) ? context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) : stage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX ? "normalize(v.worldNormal)" : "getWorldNormalVector()"), "@HEIGHT@", context.k(this, 2) ? context.g(this, 2, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER) : "0.0"));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92032c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92033d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f92031e;
    }
}
