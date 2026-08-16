package gl;

public class p {
    public static long a(long j10, long j11) {
        return (1 << ((int) (j10 % j11))) - 1;
    }

    public static void b(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        System.arraycopy(iArr, i10, iArr2, i11, i12 / 2);
    }

    public static void c(long[] jArr, int[] iArr) {
        for (int i10 = 0; i10 != iArr.length; i10 += 4) {
            int i11 = i10 / 4;
            long j10 = iArr[i10] & Sg.b.f23266s;
            jArr[i11] = j10;
            long j11 = j10 | (iArr[i10 + 1] << 16);
            jArr[i11] = j11;
            long j12 = j11 | (iArr[i10 + 2] << 32);
            jArr[i11] = j12;
            jArr[i11] = j12 | (iArr[i10 + 3] << 48);
        }
    }

    public static void d(long[] jArr, int[] iArr) {
        for (int i10 = 0; i10 != iArr.length; i10 += 2) {
            int i11 = i10 / 2;
            long j10 = iArr[i10] & 4294967295L;
            jArr[i11] = j10;
            jArr[i11] = j10 | (iArr[i10 + 1] << 32);
        }
    }

    public static void e(int[] iArr, byte[] bArr) {
        if (bArr.length % 2 != 0) {
            byte[] bArr2 = new byte[((bArr.length + 1) / 2) * 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            iArr[i11] = org.bouncycastle.util.p.C(bArr, i10) & 65535;
            i10 += 2;
        }
    }

    public static void f(long[] jArr, byte[] bArr) {
        if (bArr.length % 8 != 0) {
            byte[] bArr2 = new byte[((bArr.length + 7) / 8) * 8];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < jArr.length; i11++) {
            jArr[i11] = org.bouncycastle.util.p.x(bArr, i10);
            i10 += 8;
        }
    }

    public static void g(int[] iArr, long[] jArr) {
        for (int i10 = 0; i10 != jArr.length; i10++) {
            int i11 = i10 * 2;
            long j10 = jArr[i10];
            iArr[i11] = (int) j10;
            iArr[i11 + 1] = (int) (j10 >> 32);
        }
    }

    public static void h(byte[] bArr, long[] jArr) {
        int length = bArr.length / 8;
        int i10 = 0;
        for (int i11 = 0; i11 != length; i11++) {
            org.bouncycastle.util.p.J(jArr[i11], bArr, i11 * 8);
        }
        if (bArr.length % 8 != 0) {
            int i12 = length * 8;
            while (i12 < bArr.length) {
                bArr[i12] = (byte) (jArr[length] >>> (i10 * 8));
                i12++;
                i10++;
            }
        }
    }

    public static int i(int i10) {
        return (i10 + 63) / 64;
    }

    public static int j(int i10) {
        return (i10 + 7) / 8;
    }

    public static void k(long[] jArr, int i10, long[] jArr2, int i11, int i12, int i13) {
        if (i10 >= i11) {
            System.arraycopy(jArr2, 0, jArr, 0, (i11 + 7) / 8);
            return;
        }
        int i14 = i10 % 64;
        int i15 = i14 != 0 ? 64 - i14 : 0;
        System.arraycopy(jArr2, 0, jArr, 0, i12);
        for (int i16 = 0; i16 < i15; i16++) {
            int i17 = i13 - 1;
            jArr[i17] = jArr[i17] & (9223372036854775807 >> i16);
        }
    }

    public static int l(int i10) {
        return i10 & 65535;
    }

    public static int m(int i10) {
        return i10 & 255;
    }

    public static void n(int[] iArr, long j10, int i10) {
        iArr[i10] = iArr[i10] ^ (((int) j10) & 65535);
        int i11 = i10 + 1;
        iArr[i11] = iArr[i11] ^ (((int) (j10 >>> 16)) & 65535);
        int i12 = i10 + 2;
        iArr[i12] = iArr[i12] ^ (((int) (j10 >>> 32)) & 65535);
        int i13 = i10 + 3;
        iArr[i13] = (((int) (j10 >>> 48)) & 65535) ^ iArr[i13];
    }
}
