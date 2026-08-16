package xg;

import Fg.h;

public class C16113b {

    public static final int[] f129795b = new int[256];

    public final int[] f129796a = new int[3];

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = i10;
            for (int i12 = 0; i12 < 8; i12++) {
                i11 = (i11 & 1) == 1 ? (i11 >>> 1) ^ (-306674912) : i11 >>> 1;
            }
            f129795b[i10] = i11;
        }
    }

    public final int a(int i10, byte b10) {
        return f129795b[(i10 ^ b10) & 255] ^ (i10 >>> 8);
    }

    public byte b() {
        int i10 = this.f129796a[2] | 2;
        return (byte) ((i10 * (i10 ^ 1)) >>> 8);
    }

    public void c(char[] cArr, boolean z10) {
        int[] iArr = this.f129796a;
        iArr[0] = 305419896;
        iArr[1] = 591751049;
        iArr[2] = 878082192;
        for (byte b10 : h.a(cArr, z10)) {
            d((byte) (b10 & 255));
        }
    }

    public void d(byte b10) {
        int[] iArr = this.f129796a;
        iArr[0] = a(iArr[0], b10);
        int[] iArr2 = this.f129796a;
        int i10 = iArr2[1] + (iArr2[0] & 255);
        iArr2[1] = i10;
        int i11 = (i10 * 134775813) + 1;
        iArr2[1] = i11;
        iArr2[2] = a(iArr2[2], (byte) (i11 >> 24));
    }
}
