package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class B1 extends ShaderGraphNode {

    public static final String f91687e = "TransposeMat4";

    public final ShaderGraphSlot[] f91688c;

    public final ShaderGraphSlot[] f91689d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new B1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return B1.class;
        }

        @Override
        public String c() {
            return B1.f91687e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, B1.class);
        }

        @Override
        public String e() {
            return "Math/Matrices";
        }

        @Override
        public String f() {
            return "Transpose (Mat4)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public B1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        this.f91688c = new ShaderGraphSlot[]{new ShaderGraphSlot("Mat4", c10)};
        this.f91689d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91687e;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        String g10 = context.g(this, 0, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = transpose(" + g10 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91688c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91689d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Transpose";
    }

    @Override
    public boolean y() {
        return false;
    }
}
