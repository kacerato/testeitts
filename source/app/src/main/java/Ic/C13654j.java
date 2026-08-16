package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13654j extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91930e = "Bump";

    public final ShaderGraphSlot[] f91931c = {new ShaderGraphSlot(SerializableShaderEntry.f81152f, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE), new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2), new ShaderGraphSlot("Bias", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};

    public final ShaderGraphSlot[] f91932d = {new ShaderGraphSlot("Normal", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13654j();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13654j.class;
        }

        @Override
        public String c() {
            return C13654j.f91930e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13654j.class);
        }

        @Override
        public String e() {
            return "Vector/Normal";
        }

        @Override
        public String f() {
            return C13654j.f91930e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13654j() {
        this.serializedNodeType = f91930e;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 1) {
            return "getUV0()";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "80.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.f(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("normalmap_generator.glsl"));
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        String g12 = context.g(this, 2, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
        context.h(stage, context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) + " = sg_normal_from_albedo(" + g10 + ", " + g11 + ", " + g12 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91931c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91932d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91930e;
    }
}
