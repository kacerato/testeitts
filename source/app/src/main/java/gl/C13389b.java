package gl;

public class C13389b {

    public final int f90032a;

    public final int f90033b;

    public final long f90034c;

    public C13389b(int i10, int i11, long j10) {
        this.f90032a = i10;
        this.f90033b = i11;
        this.f90034c = j10;
    }

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i10 = 0; i10 < jArr2.length; i10++) {
            jArr[i10] = jArr2[i10] ^ jArr3[i10];
        }
    }

    public final void b(long[] jArr, int i10, long j10, long j11) {
        int i11 = 16;
        long j12 = j11 & 1152921504606846975L;
        long j13 = j12 << 1;
        long j14 = j13 ^ j12;
        long j15 = j12 << 2;
        long j16 = j15 ^ j12;
        long j17 = j14 << 1;
        long j18 = j17 ^ j12;
        long j19 = j12 << 3;
        long j20 = j16 << 1;
        long j21 = j14 << 2;
        long j22 = j18 << 1;
        long[] jArr2 = {0, j12, j13, j14, j15, j16, j17, j18, j19, j19 ^ j12, j20, j20 ^ j12, j21, j21 ^ j12, j22, j12 ^ j22};
        long j23 = 15;
        long j24 = j10 & 15;
        long j25 = 0;
        for (int i12 = 0; i12 < 16; i12++) {
            long j26 = j24 - i12;
            j25 ^= jArr2[i12] & (-(1 - ((j26 | (-j26)) >>> 63)));
        }
        byte b10 = 4;
        long j27 = 0;
        while (b10 < 64) {
            long j28 = (j10 >> b10) & j23;
            int i13 = 0;
            long j29 = 0;
            while (i13 < i11) {
                long j30 = j28 - i13;
                j29 ^= jArr2[i13] & (-(1 - (((-j30) | j30) >>> 63)));
                i13++;
                jArr2 = jArr2;
                i11 = 16;
            }
            j25 ^= j29 << b10;
            j27 ^= j29 >>> (64 - b10);
            b10 = (byte) (b10 + 4);
            jArr2 = jArr2;
            i11 = 16;
            j23 = 15;
        }
        long[] jArr3 = {-((j11 >> 60) & 1), -((j11 >> 61) & 1), -((j11 >> 62) & 1), -((j11 >> 63) & 1)};
        long j31 = jArr3[0];
        long j32 = j25 ^ ((j10 << 60) & j31);
        long j33 = (j31 & (j10 >>> 4)) ^ j27;
        long j34 = jArr3[1];
        long j35 = jArr3[2];
        long j36 = jArr3[3];
        jArr[i10] = ((j32 ^ ((j10 << 61) & j34)) ^ ((j10 << 62) & j35)) ^ ((j10 << 63) & j36);
        jArr[i10 + 1] = ((j33 ^ (j34 & (j10 >>> 3))) ^ ((j10 >>> 2) & j35)) ^ (j36 & (j10 >>> 1));
    }

    public final void c(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12, int i13, long[] jArr4, int i14) {
        if (i13 == 1) {
            b(jArr, i10, jArr2[i11], jArr3[i12]);
            return;
        }
        int i15 = i13 / 2;
        int i16 = (i13 + 1) / 2;
        int i17 = i14 + i16;
        int i18 = i17 + i16;
        int i19 = i10 + (i16 * 2);
        int i20 = i14 + (i16 * 4);
        c(jArr, i10, jArr2, i11, jArr3, i12, i16, jArr4, i20);
        c(jArr, i19, jArr2, i11 + i16, jArr3, i12 + i16, i15, jArr4, i20);
        d(jArr4, i14, jArr4, i17, jArr2, i11, jArr3, i12, i16, i15);
        c(jArr4, i18, jArr4, i14, jArr4, i17, i16, jArr4, i20);
        e(jArr, i10, jArr4, i18, jArr, i19, i16, i15);
    }

    public final void d(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12, long[] jArr4, int i13, int i14, int i15) {
        for (int i16 = 0; i16 < i15; i16++) {
            int i17 = i16 + i14;
            jArr[i16 + i10] = jArr3[i16 + i12] ^ jArr3[i17 + i12];
            jArr2[i16 + i11] = jArr4[i16 + i13] ^ jArr4[i17 + i13];
        }
        if (i15 < i14) {
            jArr[i15 + i10] = jArr3[i15 + i12];
            jArr2[i15 + i11] = jArr4[i15 + i13];
        }
    }

    public final void e(long[] jArr, int i10, long[] jArr2, int i11, long[] jArr3, int i12, int i13, int i14) {
        int i15;
        int i16 = 0;
        while (true) {
            i15 = i13 * 2;
            if (i16 >= i15) {
                break;
            }
            int i17 = i16 + i11;
            jArr2[i17] = jArr2[i17] ^ jArr[i16 + i10];
            i16++;
        }
        for (int i18 = 0; i18 < i14 * 2; i18++) {
            int i19 = i18 + i11;
            jArr2[i19] = jArr2[i19] ^ jArr3[i18 + i12];
        }
        for (int i20 = 0; i20 < i15; i20++) {
            int i21 = i20 + i13 + i10;
            jArr[i21] = jArr[i21] ^ jArr2[i20 + i11];
        }
    }

    public void f(long[] jArr, long[] jArr2, long[] jArr3) {
        int i10 = this.f90032a;
        long[] jArr4 = new long[(i10 << 1) + 1];
        c(jArr4, 0, jArr2, 0, jArr3, 0, i10, new long[i10 << 3], 0);
        g(jArr, jArr4);
    }

    public final void g(long[] jArr, long[] jArr2) {
        int i10 = 0;
        while (true) {
            int i11 = this.f90032a;
            if (i10 >= i11) {
                int i12 = i11 - 1;
                jArr[i12] = jArr[i12] & this.f90034c;
                return;
            }
            long j10 = jArr2[(i10 + i11) - 1];
            int i13 = this.f90033b;
            jArr[i10] = (jArr2[i10] ^ (j10 >>> (i13 & 63))) ^ (jArr2[i11 + i10] << ((int) (64 - (i13 & 63))));
            i10++;
        }
    }
}
