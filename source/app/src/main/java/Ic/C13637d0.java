package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphInputDefault;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13637d0 extends ShaderGraphNode {

    public static final String f91877e = "HeightNormal";

    public final ShaderGraphSlot[] f91878c;

    public final ShaderGraphSlot[] f91879d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13637d0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13637d0.class;
        }

        @Override
        public String c() {
            return "HeightNormal";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13637d0.class);
        }

        @Override
        public String e() {
            return "Vector/Normal";
        }

        @Override
        public String f() {
            return "Height Normal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13637d0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91878c = new ShaderGraphSlot[]{new ShaderGraphSlot("Height A", c10), new ShaderGraphSlot("Height B", c10), new ShaderGraphSlot("Height C", c10), new ShaderGraphSlot(F2.d.f6276t1, c10)};
        this.f91879d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};
        this.serializedNodeType = "HeightNormal";
        F(ShaderGraphInputDefault.g(3, 1.0f));
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        String g13 = context.g(this, 3, stage, c10);
        context.h(stage, context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) + " = normalize(cross(float3(" + g13 + ", " + g11 + " - " + g10 + ", 0.0), float3(0.0, " + g12 + " - " + g10 + ", " + g13 + ")));\n");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91878c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91879d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Height Normal";
    }
}
