package com.android.tools.r8.internal;

import java.lang.classfile.Attributes;

public final class S2 extends Q2 {

    public final C7988jr0 f44065b;

    public final boolean f44066c;

    public final C8874p8 f44067d;

    public final int f44068e;

    public int f44069f;

    public final S2 f44070g;

    public final S2 f44071h;

    public S2(C7988jr0 c7988jr0, boolean z10, C8874p8 c8874p8, S2 s22) {
        super(null);
        this.f44065b = c7988jr0;
        this.f44066c = z10;
        this.f44067d = c8874p8;
        int i10 = c8874p8.f51447b;
        this.f44068e = i10 == 0 ? -1 : i10 - 2;
        this.f44070g = s22;
        if (s22 != null) {
            s22.f44071h = this;
        }
    }

    public static S2 a(C7988jr0 c7988jr0, String str, S2 s22) {
        C8874p8 c8874p8 = new C8874p8();
        c8874p8.d(c7988jr0.a(str)).d(0);
        return new S2(c7988jr0, true, c8874p8, s22);
    }

    public final int b(String str) {
        if (str != null) {
            this.f44065b.a(str);
        }
        int i10 = 8;
        for (S2 s22 = this; s22 != null; s22 = s22.f44070g) {
            i10 += s22.f44067d.f51447b;
        }
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static S2 a(C7988jr0 c7988jr0, int i10, C9666tu0 c9666tu0, String str, S2 s22) {
        C8874p8 c8874p8 = new C8874p8();
        int i11 = i10 >>> 24;
        if (i11 != 0 && i11 != 1) {
            switch (i11) {
                case 16:
                case 17:
                case 18:
                case 23:
                    c8874p8.c(i11, (i10 & 16776960) >> 8);
                    if (c9666tu0 != null) {
                        c8874p8.b(0);
                    } else {
                        byte[] bArr = c9666tu0.f52727a;
                        int i12 = c9666tu0.f52728b;
                        c8874p8.a(bArr, i12, (bArr[i12] * 2) + 1);
                    }
                    c8874p8.d(c7988jr0.a(str)).d(0);
                    return new S2(c7988jr0, true, c8874p8, s22);
                case 19:
                case 20:
                case 21:
                    c8874p8.b(i11);
                    if (c9666tu0 != null) {
                    }
                    c8874p8.d(c7988jr0.a(str)).d(0);
                    return new S2(c7988jr0, true, c8874p8, s22);
                case 22:
                    break;
                default:
                    switch (i11) {
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            c8874p8.c(i10);
                            break;
                        default:
                            throw new IllegalArgumentException();
                    }
                    if (c9666tu0 != null) {
                    }
                    c8874p8.d(c7988jr0.a(str)).d(0);
                    return new S2(c7988jr0, true, c8874p8, s22);
            }
        }
        c8874p8.d(i10 >>> 16);
        if (c9666tu0 != null) {
        }
        c8874p8.d(c7988jr0.a(str)).d(0);
        return new S2(c7988jr0, true, c8874p8, s22);
    }

    @Override
    public final void a(Object obj, String str) {
        this.f44069f++;
        if (this.f44066c) {
            this.f44067d.d(this.f44065b.a(str));
        }
        if (obj instanceof String) {
            this.f44067d.c(115, this.f44065b.a((String) obj));
            return;
        }
        if (obj instanceof Byte) {
            this.f44067d.c(66, this.f44065b.a(3, (int) ((Byte) obj).byteValue()).f48722a);
            return;
        }
        if (obj instanceof Boolean) {
            this.f44067d.c(90, this.f44065b.a(3, ((Boolean) obj).booleanValue() ? 1 : 0).f48722a);
            return;
        }
        if (obj instanceof Character) {
            this.f44067d.c(67, this.f44065b.a(3, (int) ((Character) obj).charValue()).f48722a);
            return;
        }
        if (obj instanceof Short) {
            this.f44067d.c(83, this.f44065b.a(3, (int) ((Short) obj).shortValue()).f48722a);
            return;
        }
        if (obj instanceof C9663tt0) {
            this.f44067d.c(99, this.f44065b.a(((C9663tt0) obj).b()));
            return;
        }
        int i10 = 0;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            this.f44067d.c(91, bArr.length);
            int length = bArr.length;
            while (i10 < length) {
                this.f44067d.c(66, this.f44065b.a(3, (int) bArr[i10]).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            this.f44067d.c(91, zArr.length);
            int length2 = zArr.length;
            while (i10 < length2) {
                this.f44067d.c(90, this.f44065b.a(3, zArr[i10] ? 1 : 0).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            this.f44067d.c(91, sArr.length);
            int length3 = sArr.length;
            while (i10 < length3) {
                this.f44067d.c(83, this.f44065b.a(3, (int) sArr[i10]).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            this.f44067d.c(91, cArr.length);
            int length4 = cArr.length;
            while (i10 < length4) {
                this.f44067d.c(67, this.f44065b.a(3, (int) cArr[i10]).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            this.f44067d.c(91, iArr.length);
            int length5 = iArr.length;
            while (i10 < length5) {
                this.f44067d.c(73, this.f44065b.a(3, iArr[i10]).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            this.f44067d.c(91, jArr.length);
            int length6 = jArr.length;
            while (i10 < length6) {
                this.f44067d.c(74, this.f44065b.a(5, jArr[i10]).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            this.f44067d.c(91, fArr.length);
            int length7 = fArr.length;
            while (i10 < length7) {
                float f10 = fArr[i10];
                C8874p8 c8874p8 = this.f44067d;
                C7988jr0 c7988jr0 = this.f44065b;
                c7988jr0.getClass();
                c8874p8.c(70, c7988jr0.a(4, Float.floatToRawIntBits(f10)).f48722a);
                i10++;
            }
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            this.f44067d.c(91, dArr.length);
            int length8 = dArr.length;
            while (i10 < length8) {
                double d10 = dArr[i10];
                C8874p8 c8874p82 = this.f44067d;
                C7988jr0 c7988jr02 = this.f44065b;
                c7988jr02.getClass();
                c8874p82.c(68, c7988jr02.a(6, Double.doubleToRawLongBits(d10)).f48722a);
                i10++;
            }
            return;
        }
        C7656hr0 a10 = this.f44065b.a(obj);
        this.f44067d.c(".s.IFJDCS".charAt(a10.f48723b), a10.f48722a);
    }

    @Override
    public final void a(String str, String str2, String str3) {
        this.f44069f++;
        if (this.f44066c) {
            this.f44067d.d(this.f44065b.a(str));
        }
        this.f44067d.c(101, this.f44065b.a(str2)).d(this.f44065b.a(str3));
    }

    @Override
    public final Q2 a(String str, String str2) {
        this.f44069f++;
        if (this.f44066c) {
            this.f44067d.d(this.f44065b.a(str));
        }
        this.f44067d.c(64, this.f44065b.a(str2)).d(0);
        return new S2(this.f44065b, true, this.f44067d, null);
    }

    @Override
    public final Q2 a(String str) {
        this.f44069f++;
        if (this.f44066c) {
            this.f44067d.d(this.f44065b.a(str));
        }
        this.f44067d.c(91, 0);
        return new S2(this.f44065b, false, this.f44067d, null);
    }

    @Override
    public final void a() {
        int i10 = this.f44068e;
        if (i10 != -1) {
            byte[] bArr = this.f44067d.f51446a;
            int i11 = this.f44069f;
            bArr[i10] = (byte) (i11 >>> 8);
            bArr[i10 + 1] = (byte) i11;
        }
    }

    public static int a(S2 s22, S2 s23, S2 s24, S2 s25) {
        int b10 = s22 != null ? s22.b("RuntimeVisibleAnnotations") : 0;
        if (s23 != null) {
            b10 += s23.b("RuntimeInvisibleAnnotations");
        }
        if (s24 != null) {
            b10 += s24.b(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
        }
        return s25 != null ? s25.b(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS) + b10 : b10;
    }

    public final void a(int i10, C8874p8 c8874p8) {
        int i11 = 2;
        int i12 = 0;
        S2 s22 = null;
        for (S2 s23 = this; s23 != null; s23 = s23.f44070g) {
            s23.a();
            i11 += s23.f44067d.f51447b;
            i12++;
            s22 = s23;
        }
        c8874p8.d(i10);
        c8874p8.c(i11);
        c8874p8.d(i12);
        while (s22 != null) {
            C8874p8 c8874p82 = s22.f44067d;
            c8874p8.a(c8874p82.f51446a, 0, c8874p82.f51447b);
            s22 = s22.f44071h;
        }
    }

    public static void a(C7988jr0 c7988jr0, S2 s22, S2 s23, S2 s24, S2 s25, C8874p8 c8874p8) {
        if (s22 != null) {
            s22.a(c7988jr0.a("RuntimeVisibleAnnotations"), c8874p8);
        }
        if (s23 != null) {
            s23.a(c7988jr0.a("RuntimeInvisibleAnnotations"), c8874p8);
        }
        if (s24 != null) {
            s24.a(c7988jr0.a(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS), c8874p8);
        }
        if (s25 != null) {
            s25.a(c7988jr0.a(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS), c8874p8);
        }
    }

    public static void a(int i10, S2[] s2Arr, int i11, C8874p8 c8874p8) {
        int i12 = (i11 * 2) + 1;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 += s2Arr[i13] == null ? 0 : r4.b(null) - 8;
        }
        c8874p8.d(i10);
        c8874p8.c(i12);
        c8874p8.b(i11);
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = 0;
            S2 s22 = null;
            for (S2 s23 = s2Arr[i14]; s23 != null; s23 = s23.f44070g) {
                s23.a();
                i15++;
                s22 = s23;
            }
            c8874p8.d(i15);
            while (s22 != null) {
                C8874p8 c8874p82 = s22.f44067d;
                c8874p8.a(c8874p82.f51446a, 0, c8874p82.f51447b);
                s22 = s22.f44071h;
            }
        }
    }
}
