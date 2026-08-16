package jc;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import org.eclipse.jdt.core.Signature;

public class c extends ShaderGraphNode {

    public static final String f92868e = "VectorDecompose";

    public static final int f92869f = 0;

    public static final int f92870g = 0;

    public static final int f92871h = 1;

    public static final int f92872i = 2;

    public static final int f92873j = 3;

    public final ShaderGraphSlot[] f92874c = {new ShaderGraphSlot("Vector", C.DYNAMIC)};

    public final ShaderGraphSlot[] f92875d;

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new c();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return c.class;
        }

        @Override
        public String c() {
            return "VectorDecompose";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, c.class);
        }

        @Override
        public String e() {
            return "Vector";
        }

        @Override
        public String f() {
            return "Vector Decompose";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public c() {
        C c10 = C.NUMBER;
        this.f92875d = new ShaderGraphSlot[]{new ShaderGraphSlot("X", c10), new ShaderGraphSlot("Y", c10), new ShaderGraphSlot(Signature.SIG_BOOLEAN, c10), new ShaderGraphSlot(ExifInterface.LONGITUDE_WEST, c10)};
        this.serializedNodeType = "VectorDecompose";
    }

    private static C H(C t10) {
        return t10 == C.NUMBER01 ? C.NUMBER : t10;
    }

    @Override
    public void h(g context, w stage) {
        String str;
        String str2;
        String str3;
        String str4 = "0.0";
        if (context.k(this, 0)) {
            C H10 = H(context.b(this, 0));
            C c10 = C.NUMBER;
            if (H10 == c10) {
                String g10 = context.g(this, 0, stage, c10);
                str2 = "0.0";
                str3 = str2;
                str4 = g10;
                str = str3;
            } else {
                C c11 = C.FLOAT2;
                if (H10 == c11) {
                    String g11 = context.g(this, 0, stage, c11);
                    String str5 = g11 + ".x";
                    str = g11 + ".y";
                    str3 = "0.0";
                    str4 = str5;
                    str2 = str3;
                } else {
                    C c12 = C.FLOAT3;
                    if (H10 == c12) {
                        String g12 = context.g(this, 0, stage, c12);
                        String str6 = g12 + ".x";
                        str3 = g12 + ".z";
                        str = g12 + ".y";
                        str2 = "0.0";
                        str4 = str6;
                    } else {
                        C c13 = C.FLOAT4;
                        if (H10 == c13) {
                            String g13 = context.g(this, 0, stage, c13);
                            str4 = g13 + ".x";
                            str3 = g13 + ".z";
                            str2 = g13 + ".w";
                            str = g13 + ".y";
                        }
                    }
                }
            }
            C c14 = C.NUMBER;
            String c15 = context.c(this, 0, stage, c14);
            String c16 = context.c(this, 1, stage, c14);
            String c17 = context.c(this, 2, stage, c14);
            String c18 = context.c(this, 3, stage, c14);
            context.h(stage, c15 + " = " + str4 + ";");
            context.h(stage, c16 + " = " + str + ";");
            context.h(stage, c17 + " = " + str3 + ";");
            context.h(stage, c18 + " = " + str2 + ";");
        }
        str = "0.0";
        str2 = str;
        str3 = str2;
        C c142 = C.NUMBER;
        String c152 = context.c(this, 0, stage, c142);
        String c162 = context.c(this, 1, stage, c142);
        String c172 = context.c(this, 2, stage, c142);
        String c182 = context.c(this, 3, stage, c142);
        context.h(stage, c152 + " = " + str4 + ";");
        context.h(stage, c162 + " = " + str + ";");
        context.h(stage, c172 + " = " + str3 + ";");
        context.h(stage, c182 + " = " + str2 + ";");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92874c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92875d;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Vector Decompose";
    }
}
