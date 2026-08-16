package ga;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public class C {

    public static class a {

        public static final int[] f88180a;

        static {
            int[] iArr = new int[H.values().length];
            f88180a = iArr;
            try {
                iArr[H.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f88180a[H.BLENDING_MODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f88180a[H.UV_SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f88180a[H.INPUT_DIALOG_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f88180a[H.POPUP_DIALOG_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f88180a[H.FLOAT2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f88180a[H.FLOAT3.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f88180a[H.DIRECTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f88180a[H.FLOAT4.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f88180a[H.COLOR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f88180a[H.QUATERNION.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f88180a[H.NUMBER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static boolean a(H from, H to) {
        H h10;
        H h11;
        H h12;
        H h13;
        H h14;
        H h15;
        H h16;
        H h17;
        H h18;
        H h19;
        H h20;
        H h21;
        H h22;
        H h23;
        H h24;
        H h25;
        H h26;
        H h27;
        H h28;
        H h29;
        H h30;
        if (from == null || to == null) {
            return false;
        }
        H h31 = h(from);
        H h32 = h(to);
        if (h31 == h32) {
            return true;
        }
        H h33 = H.GAME_OBJECT;
        if (h32 == h33 && C13308d.n(h31)) {
            return true;
        }
        if (C13308d.n(h31) || C13308d.n(h32)) {
            H h34 = H.DYNAMIC;
            if (h31 == h34 || h32 == h34) {
                return true;
            }
            return C13308d.a(h31, h32);
        }
        if (e(h31) || e(h32) || h31 == h33 || h32 == h33 || h31 == (h12 = H.MATERIAL) || h32 == h12 || h31 == (h13 = H.OBJECT_FILE) || h32 == h13 || h31 == (h14 = H.ANIMATION_FILE) || h32 == h14 || h31 == (h15 = H.ANIMATION_MASK_FILE) || h32 == h15 || h31 == (h16 = H.WORLD_FILE) || h32 == h16 || h31 == (h17 = H.SOUND_FILE) || h32 == h17 || h31 == (h18 = H.ANIMATION) || h32 == h18 || h31 == (h19 = H.ANIMATION_MASK) || h32 == h19 || h31 == (h20 = H.COLLISION) || h32 == h20 || h31 == (h21 = H.CONTACT) || h32 == h21 || h31 == (h22 = H.LIST) || h32 == h22) {
            if (h31 == h32) {
                return true;
            }
            H h35 = H.FILE;
            return (h31 == h35 && h32 == H.PROJECT_FILE) || (h31 == (h10 = H.PROJECT_FILE) && h32 == h35) || ((h31 == h35 && h32 == H.INPUT_STREAM) || ((h31 == h10 && h32 == H.INPUT_STREAM) || h31 == (h11 = H.DYNAMIC) || h32 == h11 || h31 == h32));
        }
        H h36 = H.BRANCH;
        if (h31 == h36 || h32 == h36) {
            return h31 == h32;
        }
        if (c(h31) || c(h32)) {
            return h31 == h32 || h31 == (h23 = H.DYNAMIC) || h32 == h23;
        }
        if (d(h31) || d(h32)) {
            return h31 == h32 || h31 == (h24 = H.DYNAMIC) || h32 == h24;
        }
        if (f(h31) || f(h32)) {
            H h37 = H.DYNAMIC;
            return h31 == h37 || h32 == h37 || (f(h31) && f(h32)) || h31 == (h25 = H.NUMBER) || h31 == (h26 = H.NUMBER01) || h32 == h25 || h32 == h26 || g(h31) || g(h32) || h31 == (h27 = H.COLOR) || h32 == h27 || e(h31) || e(h32);
        }
        H h38 = H.DYNAMIC;
        if (h31 == h38 || h32 == h38) {
            return true;
        }
        H h39 = H.COLOR_GRADIENT;
        if (h31 == h39 || h32 == h39 || h31 == (h28 = H.TEXTURE) || h31 == (h29 = H.CUBEMAP) || h31 == h13 || h31 == h14 || h31 == h15 || h31 == h16 || h31 == h17 || h31 == h18 || h31 == h19 || h31 == h20 || h31 == h21 || h31 == h22 || h32 == h28 || h32 == h29 || h32 == h13 || h32 == h14 || h32 == h15 || h32 == h16 || h32 == h17 || h32 == h18 || h32 == h19 || h32 == h20 || h32 == h21 || h32 == h22) {
            return false;
        }
        H h40 = H.MAT3;
        if (h31 == h40 || h31 == (h30 = H.MAT4) || h32 == h40 || h32 == h30) {
            return (h31 == h40 && h32 == H.MAT4) || (h31 == H.MAT4 && h32 == h40);
        }
        return true;
    }

    public static String b(String expr, H from, H to) {
        H h10;
        H h11;
        H h12;
        H h13;
        H h14;
        H h15;
        H h16;
        H h17;
        H h18;
        H h19;
        H h20;
        H h21;
        H h22;
        H h23;
        H h24;
        H h25;
        H h26;
        H h27;
        int j10;
        int j11;
        if (expr == null) {
            return "0.0";
        }
        if (from == null || to == null || (h10 = h(from)) == (h11 = h(to)) || h11 == (h12 = H.DYNAMIC) || h10 == h12) {
            return expr;
        }
        H h28 = H.GAME_OBJECT;
        if ((h11 == h28 && C13308d.n(h10)) || C13308d.n(h10) || C13308d.n(h11) || h10 == h28 || h11 == h28 || h10 == (h13 = H.MATERIAL) || h11 == h13 || h10 == (h14 = H.FILE) || h11 == h14 || h10 == (h15 = H.PROJECT_FILE) || h11 == h15 || h10 == (h16 = H.INPUT_STREAM) || h11 == h16 || h10 == (h17 = H.OBJECT_FILE) || h11 == h17 || h10 == (h18 = H.WORLD_FILE) || h11 == h18 || h10 == (h19 = H.SOUND_FILE) || h11 == h19 || h10 == (h20 = H.COLLISION) || h11 == h20 || h10 == (h21 = H.CONTACT) || h11 == h21 || h10 == (h22 = H.LIST) || h11 == h22 || h10 == (h23 = H.BRANCH) || h11 == h23 || h10 == (h24 = H.BOOLEAN) || h11 == h24 || d(h10) || d(h11) || h10 == (h25 = H.COLOR_GRADIENT) || h11 == h25 || f(h10) || f(h11) || h10 == (h26 = H.TEXTURE) || h10 == (h27 = H.CUBEMAP) || e(h10) || h10 == h20 || h10 == h21 || h10 == h22 || h11 == h26 || h11 == h27 || e(h11) || h11 == h20 || h11 == h21 || h11 == h22) {
            return expr;
        }
        H h29 = H.MAT3;
        if (h10 == h29 && h11 == H.MAT4) {
            return "mat4(" + expr + ")";
        }
        H h30 = H.MAT4;
        if (h10 == h30 && h11 == h29) {
            return "mat3(" + expr + ")";
        }
        if (h10 == h29 || h10 == h30 || h11 == h29 || h11 == h30 || (j11 = j(h11)) == (j10 = j(h10))) {
            return expr;
        }
        if (j11 == 1) {
            return expr + ".x";
        }
        if (j10 != 1) {
            if (j10 > j11) {
                if (j11 == 2) {
                    return expr + ".xy";
                }
                if (j11 == 3) {
                    return expr + ".xyz";
                }
            }
            if (j10 >= j11) {
                return expr;
            }
            if (j10 == 2 && j11 == 3) {
                return "float3(" + expr + ", 1.0)";
            }
            if (j10 == 2 && j11 == 4) {
                return "float4(" + expr + ", 1.0, 1.0)";
            }
            if (j10 != 3 || j11 != 4) {
                return expr;
            }
            return "float4(" + expr + ", 1.0)";
        }
        if (j11 == 2) {
            return "float2(" + expr + ", " + expr + ")";
        }
        if (j11 == 3) {
            return "float3(" + expr + ", " + expr + ", " + expr + ")";
        }
        if (j11 != 4) {
            return TypedValues.Custom.S_FLOAT + j11 + "(" + expr + ")";
        }
        return "float4(" + expr + ", " + expr + ", " + expr + ", " + expr + ")";
    }

    public static boolean c(H t10) {
        return t10 == H.BOOLEAN;
    }

    public static boolean d(H t10) {
        return t10 == H.BLENDING_MODE || t10 == H.UV_SOURCE || t10 == H.INPUT_DIALOG_TYPE || t10 == H.POPUP_DIALOG_TYPE;
    }

    public static boolean e(H t10) {
        return t10 == H.FILE || t10 == H.PROJECT_FILE || t10 == H.INPUT_STREAM;
    }

    public static boolean f(H t10) {
        return t10 == H.TEXT;
    }

    public static boolean g(H t10) {
        return t10 == H.FLOAT2 || t10 == H.FLOAT3 || t10 == H.DIRECTION || t10 == H.FLOAT4 || t10 == H.QUATERNION;
    }

    public static H h(H t10) {
        return (t10 == H.NUMBER01 || t10 == H.BIG_NUMBER) ? H.NUMBER : t10;
    }

    public static H i(H a10, H b10) {
        H t10;
        H h10;
        H h11 = h(a10);
        H h12 = h(b10);
        H h13 = H.DYNAMIC;
        if (h11 == h13) {
            return h12;
        }
        if (h12 == h13) {
            return h11;
        }
        if ((C13308d.n(h11) || C13308d.n(h12)) && (t10 = C13308d.t(h11, h12)) != null) {
            return t10;
        }
        H h14 = H.GAME_OBJECT;
        if (h11 == h14 || h12 == h14 || h11 == (h14 = H.MATERIAL) || h12 == h14 || h11 == (h14 = H.FILE) || h12 == h14 || h11 == (h14 = H.PROJECT_FILE) || h12 == h14 || h11 == (h14 = H.INPUT_STREAM) || h12 == h14 || h11 == (h14 = H.OBJECT_FILE) || h12 == h14 || h11 == (h14 = H.ANIMATION_FILE) || h12 == h14 || h11 == (h14 = H.ANIMATION_MASK_FILE) || h12 == h14 || h11 == (h14 = H.WORLD_FILE) || h12 == h14 || h11 == (h14 = H.SOUND_FILE) || h12 == h14 || h11 == (h14 = H.ANIMATION) || h12 == h14 || h11 == (h14 = H.ANIMATION_MASK) || h12 == h14 || h11 == (h14 = H.COLLISION) || h12 == h14 || h11 == (h14 = H.CONTACT) || h12 == h14 || h11 == (h14 = H.LIST) || h12 == h14 || h11 == (h14 = H.BOOLEAN) || h12 == h14 || h11 == (h14 = H.BLENDING_MODE) || h12 == h14 || h11 == (h14 = H.UV_SOURCE) || h12 == h14 || h11 == (h14 = H.INPUT_DIALOG_TYPE) || h12 == h14 || h11 == (h14 = H.POPUP_DIALOG_TYPE) || h12 == h14) {
            return h14;
        }
        if (f(h11) || f(h12)) {
            return H.TEXT;
        }
        H h15 = H.COLOR;
        if (h11 == h15 || h12 == h15 || h11 == (h15 = H.COLOR_GRADIENT) || h12 == h15) {
            return h15;
        }
        H h16 = H.TEXTURE;
        if (h11 == h16 || h11 == (h10 = H.CUBEMAP)) {
            return h11;
        }
        if (h12 == h16 || h12 == h10) {
            return h12;
        }
        H h17 = H.MAT4;
        if (h11 == h17 || h12 == h17 || h11 == (h17 = H.MAT3) || h12 == h17 || h11 == (h17 = H.QUATERNION) || h12 == h17) {
            return h17;
        }
        int max = Math.max(j(h11), j(h12));
        return max != 2 ? max != 3 ? max != 4 ? H.NUMBER : H.FLOAT4 : H.FLOAT3 : H.FLOAT2;
    }

    public static int j(H type) {
        if (type == null || type == H.NUMBER01 || type == H.BIG_NUMBER) {
            return 1;
        }
        switch (a.f88180a[type.ordinal()]) {
            case 6:
                return 2;
            case 7:
            case 8:
                return 3;
            case 9:
            case 10:
            case 11:
                return 4;
            default:
                return 1;
        }
    }
}
