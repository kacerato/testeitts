package kc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.z;

public class h extends ShaderGraphNode {

    public static final String f95052e = "VectorXZ";

    public static final int f95053f = 0;

    public final ShaderGraphSlot[] f95054c = {new ShaderGraphSlot("Vector", C.DYNAMIC)};

    public final ShaderGraphSlot[] f95055d = {new ShaderGraphSlot("Out", C.FLOAT2)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new h();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return h.class;
        }

        @Override
        public String c() {
            return "VectorXZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, h.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector XZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public h() {
        this.serializedNodeType = "VectorXZ";
    }

    private static C H(C t10) {
        return t10 == C.NUMBER01 ? C.NUMBER : t10;
    }

    @Override
    public C D(int index, z resolver) {
        return C.FLOAT2;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, w stage) {
        String str;
        String str2;
        String str3 = "0.0";
        if (context.k(this, 0)) {
            C H10 = H(context.b(this, 0));
            C c10 = C.NUMBER;
            if (H10 == c10) {
                str2 = context.g(this, 0, stage, c10);
            } else {
                C c11 = C.FLOAT2;
                if (H10 != c11) {
                    C c12 = C.FLOAT3;
                    if (H10 == c12) {
                        String g10 = context.g(this, 0, stage, c12);
                        str3 = g10 + ".x";
                        str = g10 + ".z";
                    } else {
                        C c13 = C.FLOAT4;
                        if (H10 == c13) {
                            String g11 = context.g(this, 0, stage, c13);
                            str3 = g11 + ".x";
                            str = g11 + ".z";
                        }
                    }
                    context.h(stage, context.c(this, 0, stage, C.FLOAT2) + " = float2(" + str3 + ", " + str + ");");
                }
                str2 = context.g(this, 0, stage, c11) + ".x";
            }
            str3 = str2;
            str = "0.0";
            context.h(stage, context.c(this, 0, stage, C.FLOAT2) + " = float2(" + str3 + ", " + str + ");");
        }
        str = "0.0";
        context.h(stage, context.c(this, 0, stage, C.FLOAT2) + " = float2(" + str3 + ", " + str + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f95054c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f95055d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Vector XZ";
    }
}
