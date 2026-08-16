package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class Y0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91846e = "RotateAboutAxis";

    public final ShaderGraphSlot[] f91847c;

    public final ShaderGraphSlot[] f91848d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new Y0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return Y0.class;
        }

        @Override
        public String c() {
            return Y0.f91846e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, Y0.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return "Rotate About Axis";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public Y0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91847c = new ShaderGraphSlot[]{new ShaderGraphSlot("Vector", c10), new ShaderGraphSlot("Axis", c10), new ShaderGraphSlot("Angle", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.f91848d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91846e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "float3(0.0, 0.0, 1.0)";
        }
        if (inputIndex == 1) {
            return "float3(0.0, 1.0, 0.0)";
        }
        if (inputIndex != 2) {
            return null;
        }
        return "0.0";
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("rotate_axis.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@V@", g10), "@AXIS@", g11), "@ANGLE@", context.g(this, 2, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91847c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91848d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Rotate About Axis";
    }
}
