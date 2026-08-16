package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13603B extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91681e = "Dithering";

    public final ShaderGraphSlot[] f91682c;

    public final ShaderGraphSlot[] f91683d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13603B();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13603B.class;
        }

        @Override
        public String c() {
            return C13603B.f91681e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13603B.class);
        }

        @Override
        public String e() {
            return SerializableShaderEntry.f81153g;
        }

        @Override
        public String f() {
            return C13603B.f91681e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13603B() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91682c = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10), new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2), new ShaderGraphSlot("Strength", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.f91683d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10)};
        this.serializedNodeType = f91681e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "float3(0.0)";
        }
        if (inputIndex == 1) {
            return "getUV0()";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "1.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("dithering.glsl"));
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        String g12 = context.g(this, 2, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
        context.h(stage, context.c(this, 0, stage, c10) + " = sg_dither_rgb(" + g10 + ", " + g11 + ", " + g12 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91682c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91683d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91681e;
    }
}
