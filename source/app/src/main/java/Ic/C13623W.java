package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13623W extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91837e = "GradientSample";

    public final ShaderGraphSlot[] f91838c;

    public final ShaderGraphSlot[] f91839d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13623W();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13623W.class;
        }

        @Override
        public String c() {
            return C13623W.f91837e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13623W.class);
        }

        @Override
        public String e() {
            return "Sampling";
        }

        @Override
        public String f() {
            return "Gradient Sample";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13623W() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
        this.f91838c = new ShaderGraphSlot[]{new ShaderGraphSlot("Gradient", c10, wVar), new ShaderGraphSlot("X", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER, wVar)};
        this.f91839d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4)};
        this.serializedNodeType = f91837e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 1) {
            return Dd.c.f5125q;
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("gradient_eval.glsl"), "@OUT@", context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4)), "@TEX@", g10), "@X@", context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91838c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91839d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Gradient Sample";
    }
}
