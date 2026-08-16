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

public class g extends ShaderGraphNode {

    public static final String f95048e = "VectorXY";

    public static final int f95049f = 0;

    public final ShaderGraphSlot[] f95050c = {new ShaderGraphSlot("Vector", C.DYNAMIC)};

    public final ShaderGraphSlot[] f95051d = {new ShaderGraphSlot("Out", C.FLOAT2)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new g();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return g.class;
        }

        @Override
        public String c() {
            return "VectorXY";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, g.class);
        }

        @Override
        public String e() {
            return "Vector/Float2 Converters";
        }

        @Override
        public String f() {
            return "Vector XY";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public g() {
        this.serializedNodeType = "VectorXY";
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
        String str2 = "0.0";
        if (context.k(this, 0)) {
            C H10 = H(context.b(this, 0));
            C c10 = C.NUMBER;
            if (H10 == c10) {
                str2 = context.g(this, 0, stage, c10);
                str = "0.0";
            } else {
                C c11 = C.FLOAT2;
                if (H10 == c11) {
                    String g10 = context.g(this, 0, stage, c11);
                    str2 = g10 + ".x";
                    str = g10 + ".y";
                } else {
                    C c12 = C.FLOAT3;
                    if (H10 == c12) {
                        String g11 = context.g(this, 0, stage, c12);
                        str2 = g11 + ".x";
                        str = g11 + ".y";
                    } else {
                        C c13 = C.FLOAT4;
                        if (H10 == c13) {
                            String g12 = context.g(this, 0, stage, c13);
                            str2 = g12 + ".x";
                            str = g12 + ".y";
                        }
                    }
                }
            }
            context.h(stage, context.c(this, 0, stage, C.FLOAT2) + " = float2(" + str2 + ", " + str + ");");
        }
        str = "0.0";
        context.h(stage, context.c(this, 0, stage, C.FLOAT2) + " = float2(" + str2 + ", " + str + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f95050c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f95051d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Vector XY";
    }
}
