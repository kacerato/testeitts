package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13677q1 extends ShaderGraphNode {

    public static final String f91985e = "SRGBToLinear";

    public final ShaderGraphSlot[] f91986c;

    public final ShaderGraphSlot[] f91987d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13677q1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13677q1.class;
        }

        @Override
        public String c() {
            return C13677q1.f91985e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13677q1.class);
        }

        @Override
        public String e() {
            return SerializableShaderEntry.f81153g;
        }

        @Override
        public String f() {
            return "SRGB To Linear";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13677q1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        this.f91986c = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, c10)};
        this.f91987d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91985e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("srgb_to_linear.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@IN@", context.g(this, 0, stage, c10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91986c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91987d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "SRGB To Linear";
    }
}
