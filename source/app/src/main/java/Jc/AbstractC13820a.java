package jc;

import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.z;

public abstract class AbstractC13820a extends ShaderGraphNode {

    public static final int f92858h = 0;

    public final String f92859c;

    public final ShaderGraphSlot[] f92860d = {new ShaderGraphSlot("Vector", C.DYNAMIC)};

    public final ShaderGraphSlot[] f92861e;

    public final C f92862f;

    public final String f92863g;

    public static class C1801a {

        public static final int[] f92864a;

        static {
            int[] iArr = new int[C.values().length];
            f92864a = iArr;
            try {
                iArr[C.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f92864a[C.FLOAT2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f92864a[C.FLOAT3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f92864a[C.FLOAT4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public AbstractC13820a(String serializedName, String title, C outputType, String swizzle) {
        this.f92859c = title;
        this.f92862f = outputType;
        this.f92863g = swizzle;
        this.f92861e = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", outputType)};
        this.serializedNodeType = serializedName;
    }

    public static C I(C t10) {
        return t10 == C.NUMBER01 ? C.NUMBER : t10;
    }

    @Override
    public C D(int index, z resolver) {
        return this.f92862f;
    }

    public final String H(g context, w stage, char component) {
        C I10;
        if (!context.k(this, 0) || (I10 = I(context.b(this, 0))) == C.DYNAMIC) {
            return "0.0";
        }
        String g10 = context.g(this, 0, stage, I10);
        int i10 = C1801a.f92864a[I10.ordinal()];
        if (i10 == 1) {
            return component == 'x' ? g10 : "0.0";
        }
        if (i10 == 2) {
            if (component == 'x') {
                return g10 + ".x";
            }
            if (component != 'y') {
                return "0.0";
            }
            return g10 + ".y";
        }
        if (i10 == 3) {
            switch (component) {
                case 'x':
                    return g10 + ".x";
                case 'y':
                    return g10 + ".y";
                case 'z':
                    return g10 + ".z";
                default:
                    return "0.0";
            }
        }
        if (i10 != 4) {
            return "0.0";
        }
        switch (component) {
            case 'w':
                return g10 + ".w";
            case 'x':
                return g10 + ".x";
            case 'y':
                return g10 + ".y";
            case 'z':
                return g10 + ".z";
            default:
                return "0.0";
        }
    }

    @Override
    public void h(g context, w stage) {
        String c10 = context.c(this, 0, stage, this.f92862f);
        String H10 = H(context, stage, this.f92863g.charAt(0));
        String H11 = H(context, stage, this.f92863g.charAt(1));
        if (this.f92862f != C.FLOAT3) {
            context.h(stage, c10 + " = float2(" + H10 + ", " + H11 + ");");
            return;
        }
        context.h(stage, c10 + " = float3(" + H10 + ", " + H11 + ", " + H(context, stage, this.f92863g.charAt(2)) + ");");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92860d;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92861e;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return this.f92859c;
    }
}
