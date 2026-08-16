package ga;

import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;

public class C13309e {

    public static final float f88199a = 64.0f;

    public static final String f88200b = "cameraImage";

    public static final int f88201c = 64;

    public static final boolean f88202d = true;

    public static final long f88203e = 450;

    public static final long f88204f = 250;

    public static final int f88205g = 10;

    public static final int f88206h = 2;

    public static final float f88207i = 0.1f;

    public static final float f88208j = 1.6f;

    public static final long f88209k = 300;

    public static final int f88210l = -2;

    public static final int f88211m = -2;

    public static final int f88212n = 4;

    public static final int f88213o = 64;

    public static final int f88214p = 10;

    public static final int f88215q = 0;

    public static final int f88216r = 30;

    public static final int f88217s = 0;

    public static final int f88218t = 12;

    public static final int f88219u = 24;

    public static final int f88220v = 140;

    public static final int f88221w = 24;

    public static final Ac.b f88222x = Theme.T.NODEGRAPH_NUMBER_COLOR;

    public static final Ac.b f88223y = Theme.T.NODEGRAPH_STRING_COLOR;

    public static final Ac.b f88224z = Theme.T.NODEGRAPH_TYPE_COLOR;

    public static final Ac.b f88192A = Theme.T.NODEGRAPH_VECTOR_COLOR;

    public static final Ac.b f88193B = Theme.T.NODEGRAPH_LIST_COLOR;

    public static final Ac.b f88194C = Theme.T.NODEGRAPH_DYNAMIC_COLOR;

    public static final Ac.b f88195D = Theme.T.NODEGRAPH_TEXTURE_COLOR;

    public static final Ac.b f88196E = Theme.T.NODEGRAPH_CUBEMAP_COLOR;

    public static final Ac.b f88197F = Theme.T.NODEGRAPH_BRANCH_COLOR;

    public static final Ac.b f88198G = Theme.T.NODEGRAPH_SELECTED_BORDER;

    public static class a {

        public static final int[] f88225a;

        static {
            int[] iArr = new int[H.values().length];
            f88225a = iArr;
            try {
                iArr[H.TEXTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f88225a[H.CUBEMAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f88225a[H.COLOR_GRADIENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f88225a[H.GAME_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f88225a[H.MATERIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f88225a[H.FILE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f88225a[H.PROJECT_FILE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f88225a[H.INPUT_STREAM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f88225a[H.OBJECT_FILE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f88225a[H.WORLD_FILE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f88225a[H.SOUND_FILE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f88225a[H.COLLISION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f88225a[H.CONTACT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f88225a[H.BOOLEAN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f88225a[H.BLENDING_MODE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f88225a[H.UV_SOURCE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f88225a[H.INPUT_DIALOG_TYPE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f88225a[H.POPUP_DIALOG_TYPE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f88225a[H.LIST.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f88225a[H.BRANCH.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f88225a[H.TEXT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f88225a[H.COLOR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f88225a[H.FLOAT2.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f88225a[H.FLOAT3.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f88225a[H.DIRECTION.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f88225a[H.FLOAT4.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f88225a[H.QUATERNION.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f88225a[H.MAT3.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f88225a[H.MAT4.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f88225a[H.DYNAMIC.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f88225a[H.BIG_NUMBER.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f88225a[H.NUMBER01.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f88225a[H.NUMBER.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
        }
    }

    public static int a(H type) {
        if (type == null) {
            return Theme.i(f88222x);
        }
        if (C13308d.n(type)) {
            return Theme.i(f88224z);
        }
        switch (a.f88225a[type.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                return Theme.i(f88224z);
            case 19:
                return Theme.i(f88193B);
            case 20:
                return Theme.i(f88197F);
            case 21:
                return Theme.i(f88223y);
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
                return Theme.i(f88192A);
            case 30:
                return Theme.i(f88194C);
            default:
                return Theme.i(f88222x);
        }
    }

    public static int b() {
        return Theme.i(f88222x);
    }

    public static int c() {
        return Theme.i(f88198G);
    }

    public static int d() {
        return Theme.i(Theme.T.PANEL_TOPBAR);
    }
}
