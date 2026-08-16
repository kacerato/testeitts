package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class A1 extends ShaderGraphNode {

    public static final String f91678e = "TransposeMat3";

    public final ShaderGraphSlot[] f91679c;

    public final ShaderGraphSlot[] f91680d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new A1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return A1.class;
        }

        @Override
        public String c() {
            return A1.f91678e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, A1.class);
        }

        @Override
        public String e() {
            return "Math/Matrices";
        }

        @Override
        public String f() {
            return "Transpose (Mat3)";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public A1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT3;
        this.f91679c = new ShaderGraphSlot[]{new ShaderGraphSlot("Mat3", c10)};
        this.f91680d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91678e;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT3;
        String g10 = context.g(this, 0, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = transpose(" + g10 + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91679c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91680d;
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
