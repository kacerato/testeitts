package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import t3.C15377a;

public class i {

    public static final Ac.b f81342A;

    public static final Ac.b f81343B;

    public static final Ac.b f81344C;

    public static final Ac.b f81345D;

    public static final Ac.b f81346E;

    public static final Ac.b f81347F;

    public static final Ac.b f81348G;

    public static final float f81349a = 64.0f;

    public static boolean f81350b = false;

    public static final String f81351c = "cameraImage";

    public static final int f81352d = 64;

    public static final boolean f81353e = true;

    public static final long f81354f = 450;

    public static final long f81355g = 250;

    public static final int f81356h = 10;

    public static final int f81357i = 2;

    public static final int f81358j = 8;

    public static final float f81359k = 0.1f;

    public static final float f81360l = 1.6f;

    public static final long f81361m = 300;

    public static final int f81362n = -2;

    public static final int f81363o = -2;

    public static final int f81364p = 4;

    public static final int f81365q = 64;

    public static final int f81366r = 10;

    public static final int f81367s = 0;

    public static final int f81368t = 30;

    public static final int f81369u = 0;

    public static final int f81370v = 12;

    public static final int f81371w = 24;

    public static final int f81372x = 140;

    public static final int f81373y = 24;

    public static final Ac.b f81374z;

    public static class a {

        public static final int[] f81375a;

        static {
            int[] iArr = new int[C.values().length];
            f81375a = iArr;
            try {
                iArr[C.TEXTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81375a[C.CUBEMAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81375a[C.BRANCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81375a[C.FLOAT2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81375a[C.FLOAT3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81375a[C.FLOAT4.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81375a[C.COLOR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81375a[C.MAT3.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f81375a[C.MAT4.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f81375a[C.DYNAMIC.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f81375a[C.NUMBER01.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f81375a[C.NUMBER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f81350b = false;
        }
        f81374z = Theme.T.NODEGRAPH_NUMBER_COLOR;
        f81342A = Theme.T.NODEGRAPH_TYPE_COLOR;
        f81343B = Theme.T.NODEGRAPH_VECTOR_COLOR;
        f81344C = Theme.T.NODEGRAPH_DYNAMIC_COLOR;
        f81345D = Theme.T.NODEGRAPH_TEXTURE_COLOR;
        f81346E = Theme.T.NODEGRAPH_CUBEMAP_COLOR;
        f81347F = Theme.T.NODEGRAPH_BRANCH_COLOR;
        f81348G = Theme.T.NODEGRAPH_SELECTED_BORDER;
    }

    public static int a(C type) {
        if (type == null) {
            return Theme.i(f81374z);
        }
        switch (a.f81375a[type.ordinal()]) {
            case 1:
                return Theme.i(f81345D);
            case 2:
                return Theme.i(f81346E);
            case 3:
                return Theme.i(f81347F);
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return Theme.i(f81343B);
            case 10:
                return Theme.i(f81344C);
            default:
                return Theme.i(f81374z);
        }
    }

    public static int b() {
        return Theme.i(f81374z);
    }

    public static int c() {
        return Theme.i(f81348G);
    }

    public static int d() {
        return Theme.i(Theme.T.PANEL_TOPBAR);
    }
}
