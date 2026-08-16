package com.android.tools.r8.internal;

public final class XQ {

    public static final XQ f45685o = new XQ();

    public YQ f45686a;

    public short f45687b;

    public short f45688c;

    public int[] f45689d;

    public int f45690e;

    public int[] f45691f;

    public short f45692g;

    public short f45693h;

    public short f45694i;

    public short f45695j;

    public C7509gy f45696k;

    public XQ f45697l;

    public C4890At f45698m;

    public XQ f45699n;

    public final void a(C8874p8 c8874p8, int i10, boolean z10) {
        if ((this.f45687b & 4) != 0) {
            if (z10) {
                c8874p8.c(this.f45690e - i10);
                return;
            } else {
                c8874p8.d(this.f45690e - i10);
                return;
            }
        }
        if (z10) {
            a(i10, 536870912, c8874p8.f51447b);
            c8874p8.c(-1);
        } else {
            a(i10, 268435456, c8874p8.f51447b);
            c8874p8.d(-1);
        }
    }

    public final String toString() {
        return T60.a(System.identityHashCode(this), "L");
    }

    public final void a(int i10, int i11, int i12) {
        if (this.f45691f == null) {
            this.f45691f = new int[6];
        }
        int[] iArr = this.f45691f;
        int i13 = iArr[0];
        int i14 = i13 + 2;
        if (i14 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 6];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f45691f = iArr2;
        }
        int[] iArr3 = this.f45691f;
        iArr3[i13 + 1] = i10;
        iArr3[i14] = i11 | i12;
        iArr3[0] = i14;
    }

    public final boolean a(byte[] bArr, C8874p8 c8874p8, int i10) {
        this.f45687b = (short) (this.f45687b | 4);
        this.f45690e = i10;
        int[] iArr = this.f45691f;
        boolean z10 = false;
        if (iArr == null) {
            return false;
        }
        for (int i11 = iArr[0]; i11 > 0; i11 -= 2) {
            int[] iArr2 = this.f45691f;
            int i12 = iArr2[i11 - 1];
            int i13 = iArr2[i11];
            int i14 = i10 - i12;
            int i15 = 268435455 & i13;
            int i16 = i13 & (-268435456);
            if (i16 == 268435456) {
                if (i14 < -32768 || i14 > 32767) {
                    int i17 = bArr[i12] & 255;
                    if (i17 < 198) {
                        bArr[i12] = (byte) (i17 + 49);
                    } else {
                        bArr[i12] = (byte) (i17 + 20);
                    }
                    z10 = true;
                }
                bArr[i15] = (byte) (i14 >>> 8);
                bArr[i15 + 1] = (byte) i14;
            } else if (i16 == 536870912) {
                bArr[i15] = (byte) (i14 >>> 24);
                bArr[i15 + 1] = (byte) (i14 >>> 16);
                bArr[i15 + 2] = (byte) (i14 >>> 8);
                bArr[i15 + 3] = (byte) i14;
            } else {
                byte[] bArr2 = c8874p8.f51446a;
                bArr2[i15] = (byte) (i10 >>> 8);
                bArr2[i15 + 1] = (byte) i10;
            }
        }
        return z10;
    }
}
