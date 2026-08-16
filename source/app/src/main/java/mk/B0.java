package mk;

import com.google.common.collect.C12510d2;
import java.math.BigInteger;
import sk.AbstractC15323i;
import sk.AbstractC15329o;
import sk.C15316b;

public class B0 {

    public static final long f97163a = 140737488355327L;

    public static final long f97164b = 1152921504606846975L;

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
    }

    public static void c(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static void d(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
        jArr2[3] = jArr2[3] ^ jArr[3];
    }

    public static long[] e(BigInteger bigInteger) {
        return AbstractC15329o.V(239, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] p10 = AbstractC15323i.p();
        AbstractC15323i.l(jArr, jArr2);
        for (int i10 = 1; i10 < 239; i10 += 2) {
            k(jArr2, p10);
            o(p10, jArr2);
            k(jArr2, p10);
            o(p10, jArr2);
            d(jArr, jArr2);
        }
    }

    public static void g(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        jArr[0] = j10 ^ (j11 << 60);
        jArr[1] = (j11 >>> 4) ^ (j12 << 56);
        jArr[2] = (j12 >>> 8) ^ (j13 << 52);
        jArr[3] = (j13 >>> 12) ^ (j14 << 48);
        jArr[4] = (j14 >>> 16) ^ (j15 << 44);
        jArr[5] = (j15 >>> 20) ^ (j16 << 40);
        jArr[6] = (j16 >>> 24) ^ (j17 << 36);
        jArr[7] = j17 >>> 28;
    }

    public static void h(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        jArr2[0] = j10 & 1152921504606846975L;
        jArr2[1] = ((j10 >>> 60) ^ (j11 << 4)) & 1152921504606846975L;
        jArr2[2] = ((j11 >>> 56) ^ (j12 << 8)) & 1152921504606846975L;
        jArr2[3] = (j12 >>> 52) ^ (j13 << 12);
    }

    public static void i(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        h(jArr, jArr4);
        h(jArr2, jArr5);
        long[] jArr6 = new long[8];
        j(jArr6, jArr4[0], jArr5[0], jArr3, 0);
        j(jArr6, jArr4[1], jArr5[1], jArr3, 1);
        j(jArr6, jArr4[2], jArr5[2], jArr3, 2);
        j(jArr6, jArr4[3], jArr5[3], jArr3, 3);
        for (int i10 = 5; i10 > 0; i10--) {
            jArr3[i10] = jArr3[i10] ^ jArr3[i10 - 1];
        }
        j(jArr6, jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        j(jArr6, jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 3);
        for (int i11 = 7; i11 > 1; i11--) {
            jArr3[i11] = jArr3[i11] ^ jArr3[i11 - 2];
        }
        long j10 = jArr4[0] ^ jArr4[2];
        long j11 = jArr4[1] ^ jArr4[3];
        long j12 = jArr5[0] ^ jArr5[2];
        long j13 = jArr5[1] ^ jArr5[3];
        j(jArr6, j10 ^ j11, j12 ^ j13, jArr3, 3);
        long[] jArr7 = new long[3];
        j(jArr6, j10, j12, jArr7, 0);
        j(jArr6, j11, j13, jArr7, 1);
        long j14 = jArr7[0];
        long j15 = jArr7[1];
        long j16 = jArr7[2];
        jArr3[2] = jArr3[2] ^ j14;
        jArr3[3] = jArr3[3] ^ (j14 ^ j15);
        jArr3[4] = jArr3[4] ^ (j16 ^ j15);
        jArr3[5] = jArr3[5] ^ j16;
        g(jArr3);
    }

    public static void j(long[] jArr, long j10, long j11, long[] jArr2, int i10) {
        jArr[1] = j11;
        long j12 = j11 << 1;
        jArr[2] = j12;
        long j13 = j12 ^ j11;
        jArr[3] = j13;
        long j14 = j11 << 2;
        jArr[4] = j14;
        jArr[5] = j14 ^ j11;
        long j15 = j13 << 1;
        jArr[6] = j15;
        jArr[7] = j15 ^ j11;
        int i11 = (int) j10;
        long j16 = (jArr[(i11 >>> 3) & 7] << 3) ^ jArr[i11 & 7];
        long j17 = 0;
        int i12 = 54;
        do {
            int i13 = (int) (j10 >>> i12);
            long j18 = jArr[i13 & 7] ^ (jArr[(i13 >>> 3) & 7] << 3);
            j16 ^= j18 << i12;
            j17 ^= j18 >>> (-i12);
            i12 -= 6;
        } while (i12 > 0);
        jArr2[i10] = jArr2[i10] ^ (1152921504606846975L & j16);
        int i14 = i10 + 1;
        jArr2[i14] = ((((((j10 & 585610922974906400L) & ((j11 << 4) >> 63)) >>> 5) ^ j17) << 4) ^ (j16 >>> 60)) ^ jArr2[i14];
    }

    public static void k(long[] jArr, long[] jArr2) {
        C15316b.d(jArr, 0, 4, jArr2, 0);
    }

    public static void l(long[] jArr, long[] jArr2) {
        if (AbstractC15323i.B(jArr)) {
            throw new IllegalStateException();
        }
        long[] n10 = AbstractC15323i.n();
        long[] n11 = AbstractC15323i.n();
        r(jArr, n10);
        m(n10, jArr, n10);
        r(n10, n10);
        m(n10, jArr, n10);
        t(n10, 3, n11);
        m(n11, n10, n11);
        r(n11, n11);
        m(n11, jArr, n11);
        t(n11, 7, n10);
        m(n10, n11, n10);
        t(n10, 14, n11);
        m(n11, n10, n11);
        r(n11, n11);
        m(n11, jArr, n11);
        t(n11, 29, n10);
        m(n10, n11, n10);
        r(n10, n10);
        m(n10, jArr, n10);
        t(n10, 59, n11);
        m(n11, n10, n11);
        r(n11, n11);
        m(n11, jArr, n11);
        t(n11, 119, n10);
        m(n10, n11, n10);
        r(n10, jArr2);
    }

    public static void m(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] p10 = AbstractC15323i.p();
        i(jArr, jArr2, p10);
        o(p10, jArr3);
    }

    public static void n(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] p10 = AbstractC15323i.p();
        i(jArr, jArr2, p10);
        b(jArr3, p10, jArr3);
    }

    public static void o(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        long j18 = j16 ^ (j17 >>> 17);
        long j19 = (j15 ^ (j17 << 47)) ^ (j18 >>> 17);
        long j20 = ((j14 ^ (j17 >>> 47)) ^ (j18 << 47)) ^ (j19 >>> 17);
        long j21 = j10 ^ (j20 << 17);
        long j22 = (j11 ^ (j19 << 17)) ^ (j20 >>> 47);
        long j23 = ((j12 ^ (j18 << 17)) ^ (j19 >>> 47)) ^ (j20 << 47);
        long j24 = (((j13 ^ (j17 << 17)) ^ (j18 >>> 47)) ^ (j19 << 47)) ^ (j20 >>> 17);
        long j25 = j24 >>> 47;
        jArr2[0] = j21 ^ j25;
        jArr2[1] = j22;
        jArr2[2] = (j25 << 30) ^ j23;
        jArr2[3] = f97163a & j24;
    }

    public static void p(long[] jArr, int i10) {
        int i11 = i10 + 3;
        long j10 = jArr[i11];
        long j11 = j10 >>> 47;
        jArr[i10] = jArr[i10] ^ j11;
        int i12 = i10 + 2;
        jArr[i12] = (j11 << 30) ^ jArr[i12];
        jArr[i11] = j10 & f97163a;
    }

    public static void q(long[] jArr, long[] jArr2) {
        long m10 = C15316b.m(jArr[0]);
        long m11 = C15316b.m(jArr[1]);
        long j10 = (m10 & 4294967295L) | (m11 << 32);
        long j11 = (m10 >>> 32) | (m11 & C12510d2.f66536l);
        int i10 = 2;
        long m12 = C15316b.m(jArr[2]);
        long m13 = C15316b.m(jArr[3]);
        long j12 = (m12 & 4294967295L) | (m13 << 32);
        long j13 = (m13 & C12510d2.f66536l) | (m12 >>> 32);
        long j14 = j13 >>> 49;
        long j15 = (j11 >>> 49) | (j13 << 15);
        long j16 = j13 ^ (j11 << 15);
        long[] p10 = AbstractC15323i.p();
        int[] iArr = {39, 120};
        int i11 = 0;
        while (i11 < i10) {
            int i12 = iArr[i11];
            int i13 = i12 >>> 6;
            int i14 = i12 & 63;
            p10[i13] = p10[i13] ^ (j11 << i14);
            int i15 = i13 + 1;
            int[] iArr2 = iArr;
            int i16 = -i14;
            p10[i15] = p10[i15] ^ ((j16 << i14) | (j11 >>> i16));
            int i17 = i13 + 2;
            p10[i17] = p10[i17] ^ ((j15 << i14) | (j16 >>> i16));
            int i18 = i13 + 3;
            p10[i18] = p10[i18] ^ ((j14 << i14) | (j15 >>> i16));
            int i19 = i13 + 4;
            p10[i19] = p10[i19] ^ (j14 >>> i16);
            i11++;
            i10 = 2;
            iArr = iArr2;
        }
        o(p10, jArr2);
        jArr2[0] = jArr2[0] ^ j10;
        jArr2[1] = jArr2[1] ^ j12;
    }

    public static void r(long[] jArr, long[] jArr2) {
        long[] p10 = AbstractC15323i.p();
        k(jArr, p10);
        o(p10, jArr2);
    }

    public static void s(long[] jArr, long[] jArr2) {
        long[] p10 = AbstractC15323i.p();
        k(jArr, p10);
        b(jArr2, p10, jArr2);
    }

    public static void t(long[] jArr, int i10, long[] jArr2) {
        long[] p10 = AbstractC15323i.p();
        k(jArr, p10);
        while (true) {
            o(p10, jArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                k(jArr2, p10);
            }
        }
    }

    public static int u(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[1] >>> 17)) ^ (jArr[2] >>> 34))) & 1;
    }
}
