package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class X0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91842e = "Refract";

    public final ShaderGraphSlot[] f91843c;

    public final ShaderGraphSlot[] f91844d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new X0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return X0.class;
        }

        @Override
        public String c() {
            return X0.f91842e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, X0.class);
        }

        @Override
        public String e() {
            return "Math/Vector";
        }

        @Override
        public String f() {
            return X0.f91842e;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public X0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91843c = new ShaderGraphSlot[]{new ShaderGraphSlot(Signature.SIG_INT, c10), new ShaderGraphSlot("N", c10), new ShaderGraphSlot("Eta", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};
        this.f91844d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91842e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0 || inputIndex == 1) {
            return "float3(0.0, 0.0, 1.0)";
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
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("refract.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@I@", g10), "@N@", g11), "@ETA@", context.g(this, 2, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91843c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91844d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return f91842e;
    }
}
