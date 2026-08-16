package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13613L extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91751e = "Fresnel";

    public final ShaderGraphSlot[] f91752c;

    public final ShaderGraphSlot[] f91753d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13613L();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13613L.class;
        }

        @Override
        public String c() {
            return C13613L.f91751e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13613L.class);
        }

        @Override
        public String e() {
            return "Math";
        }

        @Override
        public String f() {
            return C13613L.f91751e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13613L() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("Normal", c10, wVar);
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("View", c10, wVar);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91752c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, new ShaderGraphSlot("Power", c11, wVar)};
        this.f91753d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c11)};
        this.serializedNodeType = f91751e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "getWorldGeometricNormalVector()";
        }
        if (inputIndex == 1) {
            return "getWorldViewVector()";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "1.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("fresnel.glsl"), "@OUT@", context.c(this, 0, stage, c11)), "@NORMAL@", g10), "@VIEW@", g11), "@POWER@", context.g(this, 2, stage, c11)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91752c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91753d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91751e;
    }
}
