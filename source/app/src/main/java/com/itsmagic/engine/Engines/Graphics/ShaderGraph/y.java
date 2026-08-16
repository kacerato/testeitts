package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public class y {

    public static class a {

        public static final int[] f81395a;

        static {
            int[] iArr = new int[C.values().length];
            f81395a = iArr;
            try {
                iArr[C.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81395a[C.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81395a[C.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81395a[C.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static boolean a(C from, C to) {
        C c10;
        C c11;
        if (from == null || to == null) {
            return false;
        }
        C d10 = d(from);
        C d11 = d(to);
        C e10 = e(d10);
        C e11 = e(d11);
        if (e10 == e11) {
            return true;
        }
        C c12 = C.BRANCH;
        if (e10 == c12 || e11 == c12) {
            return e10 == e11;
        }
        C c13 = C.DYNAMIC;
        if (e10 == c13 || e11 == c13) {
            return true;
        }
        C c14 = C.TEXTURE;
        if (e10 == c14 || e10 == (c10 = C.CUBEMAP) || e11 == c14 || e11 == c10) {
            return false;
        }
        C c15 = C.MAT3;
        if (e10 == c15 || e10 == (c11 = C.MAT4) || e11 == c15 || e11 == c11) {
            return (e10 == c15 && e11 == C.MAT4) || (e10 == C.MAT4 && e11 == c15);
        }
        return true;
    }

    public static String b(String expr, C from, C to) {
        C c10;
        C c11;
        C c12;
        int g10;
        int g11;
        if (expr == null) {
            return "0.0";
        }
        if (from == null || to == null) {
            return expr;
        }
        C d10 = d(from);
        C d11 = d(to);
        C e10 = e(d10);
        C e11 = e(d11);
        C c13 = C.DYNAMIC;
        if (e10 == c13) {
            return c(expr, e11);
        }
        if (e10 == e11 || e11 == c13 || e10 == (c10 = C.BRANCH) || e11 == c10 || e10 == (c11 = C.TEXTURE) || e10 == (c12 = C.CUBEMAP) || e11 == c11 || e11 == c12) {
            return expr;
        }
        C c14 = C.MAT3;
        if (e10 == c14 && e11 == C.MAT4) {
            return "mat4(" + expr + ")";
        }
        C c15 = C.MAT4;
        if (e10 == c15 && e11 == c14) {
            return "mat3(" + expr + ")";
        }
        if (e10 == c14 || e10 == c15 || e11 == c14 || e11 == c15 || (g11 = g(e11)) == (g10 = g(e10))) {
            return expr;
        }
        if (g11 == 1) {
            return expr + ".x";
        }
        if (g10 != 1) {
            if (g10 > g11) {
                if (g11 == 2) {
                    return expr + ".xy";
                }
                if (g11 == 3) {
                    return expr + ".xyz";
                }
            }
            if (g10 >= g11) {
                return expr;
            }
            if (g10 == 2 && g11 == 3) {
                return "float3(" + expr + ", 1.0)";
            }
            if (g10 == 2 && g11 == 4) {
                return "float4(" + expr + ", 1.0, 1.0)";
            }
            if (g10 != 3 || g11 != 4) {
                return expr;
            }
            return "float4(" + expr + ", 1.0)";
        }
        if (g11 == 2) {
            return "float2(" + expr + ", " + expr + ")";
        }
        if (g11 == 3) {
            return "float3(" + expr + ", " + expr + ", " + expr + ")";
        }
        if (g11 != 4) {
            return TypedValues.Custom.S_FLOAT + g11 + "(" + expr + ")";
        }
        return "float4(" + expr + ", " + expr + ", " + expr + ", " + expr + ")";
    }

    public static String c(String expr, C to) {
        if (to == null) {
            return expr;
        }
        int i10 = a.f81395a[d(to).ordinal()];
        if (i10 == 1) {
            return "float2(" + expr + ")";
        }
        if (i10 == 2) {
            return "float3(" + expr + ")";
        }
        if (i10 != 3) {
            return expr;
        }
        return "float4(" + expr + ")";
    }

    public static C d(C t10) {
        return t10 == C.COLOR ? C.FLOAT4 : t10;
    }

    public static C e(C t10) {
        return t10 == C.NUMBER01 ? C.NUMBER : t10;
    }

    public static C f(C a10, C b10) {
        C c10;
        C c11;
        C d10 = d(a10);
        C d11 = d(b10);
        C e10 = e(d10);
        C e11 = e(d11);
        C c12 = C.DYNAMIC;
        if (e10 == c12) {
            return e11;
        }
        if (e11 == c12 || e10 == (c10 = C.TEXTURE) || e10 == (c11 = C.CUBEMAP)) {
            return e10;
        }
        if (e11 == c10 || e11 == c11) {
            return e11;
        }
        C c13 = C.MAT4;
        if (e10 == c13 || e11 == c13 || e10 == (c13 = C.MAT3) || e11 == c13) {
            return c13;
        }
        int max = Math.max(g(e10), g(e11));
        return max != 2 ? max != 3 ? max != 4 ? C.NUMBER : C.FLOAT4 : C.FLOAT3 : C.FLOAT2;
    }

    public static int g(C type) {
        C d10;
        if (type == null || (d10 = d(type)) == C.NUMBER01) {
            return 1;
        }
        int i10 = a.f81395a[d10.ordinal()];
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 1 : 4;
        }
        return 3;
    }
}
