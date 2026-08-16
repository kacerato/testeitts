package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class D0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91700e = "NormalIntensity";

    public final ShaderGraphSlot[] f91701c;

    public final ShaderGraphSlot[] f91702d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new D0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return D0.class;
        }

        @Override
        public String c() {
            return D0.f91700e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, D0.class);
        }

        @Override
        public String e() {
            return "Vector/Normal";
        }

        @Override
        public String f() {
            return "Normal Intensity";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public D0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91701c = new ShaderGraphSlot[]{new ShaderGraphSlot("Normal", c10), new ShaderGraphSlot("Intensity", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.f91702d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91700e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 1) {
            return "1.0";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("normal_intensity.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@N@", g10), "@I@", context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91701c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91702d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Normal Intensity";
    }
}
