package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13695z0 extends AbstractC13647g1 {

    public static final String f92048g = "Multiply";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13695z0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13695z0.class;
        }

        @Override
        public String c() {
            return "Multiply";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13695z0.class);
        }

        @Override
        public String e() {
            return "Math/Basic";
        }

        @Override
        public String f() {
            return "Multiply";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13695z0() {
        super("Multiply", "*");
        this.serializedNodeType = "Multiply";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b10 = resolver.b(this, 0);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b11 = resolver.b(this, 1);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        if (b10 == c12 && b11 == c12) {
            return c12;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c13 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT3;
        if (b10 == c13 && b11 == c13) {
            return c13;
        }
        if (b10 == c12 && b11 == (c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4)) {
            return c11;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c14 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        if (b10 == c14 && b11 == c12) {
            return c14;
        }
        if (b10 == c13 && b11 == (c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)) {
            return c10;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c15 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        return (b10 == c15 && b11 == c13) ? c15 : (b10 == c12 && b11 == c15) ? c15 : (b10 == c15 && b11 == c12) ? c15 : com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.f(b10, b11);
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.z zVar = (com.itsmagic.engine.Engines.Graphics.ShaderGraph.z) context;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b10 = zVar.b(this, 0);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C b11 = zVar.b(this, 1);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D10 = D(0, zVar);
        String c10 = context.c(this, 0, stage, D10);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT4;
        if (D10 == c11 && b10 == c11 && b11 == c11) {
            context.h(stage, c10 + " = " + context.g(this, 0, stage, c11) + " * " + context.g(this, 1, stage, c11) + ";");
            return;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.MAT3;
        if (D10 == c12 && b10 == c12 && b11 == c12) {
            context.h(stage, c10 + " = " + context.g(this, 0, stage, c12) + " * " + context.g(this, 1, stage, c12) + ";");
            return;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c13 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        if (D10 == c13 && b10 == c11 && b11 == c13) {
            context.h(stage, c10 + " = " + context.g(this, 0, stage, c11) + " * " + context.g(this, 1, stage, c13) + ";");
            return;
        }
        if (D10 == c13 && b10 == c13 && b11 == c11) {
            context.h(stage, c10 + " = " + context.g(this, 0, stage, c13) + " * " + context.g(this, 1, stage, c11) + ";");
            return;
        }
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c14 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        if (D10 == c14 && b10 == c12 && b11 == c14) {
            context.h(stage, c10 + " = " + context.g(this, 0, stage, c12) + " * " + context.g(this, 1, stage, c14) + ";");
            return;
        }
        if (D10 == c14 && b10 == c14 && b11 == c12) {
            context.h(stage, c10 + " = " + context.g(this, 0, stage, c14) + " * " + context.g(this, 1, stage, c12) + ";");
            return;
        }
        if (D10 == c14 && b10 == c11 && b11 == c14) {
            context.h(stage, c10 + " = (" + context.g(this, 0, stage, c11) + " * float4(" + context.g(this, 1, stage, c14) + ", 1.0)).xyz;");
            return;
        }
        if (D10 != c14 || b10 != c14 || b11 != c11) {
            context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("binary_op.glsl"), "@OUT@", c10), "@A@", context.g(this, 0, stage, D10)), "@B@", context.g(this, 1, stage, D10)), "@OP@", "*"));
            return;
        }
        context.h(stage, c10 + " = (float4(" + context.g(this, 0, stage, c14) + ", 1.0) * " + context.g(this, 1, stage, c11) + ").xyz;");
    }

    @Override
    public boolean y() {
        return false;
    }
}
