package mk;

import com.google.common.collect.C12510d2;
import java.math.BigInteger;
import sk.AbstractC15323i;
import sk.AbstractC15329o;
import sk.C15316b;

public class C14317v0 {

    public static final long f97428a = 2199023255551L;

    public static final long f97429b = 576460752303423487L;

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
        return AbstractC15329o.V(233, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] p10 = AbstractC15323i.p();
        AbstractC15323i.l(jArr, jArr2);
        for (int i10 = 1; i10 < 233; i10 += 2) {
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
        jArr[0] = j10 ^ (j11 << 59);
        jArr[1] = (j11 >>> 5) ^ (j12 << 54);
        jArr[2] = (j12 >>> 10) ^ (j13 << 49);
        jArr[3] = (j13 >>> 15) ^ (j14 << 44);
        jArr[4] = (j14 >>> 20) ^ (j15 << 39);
        jArr[5] = (j15 >>> 25) ^ (j16 << 34);
        jArr[6] = (j16 >>> 30) ^ (j17 << 29);
        jArr[7] = j17 >>> 35;
    }

    public static void h(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        jArr2[0] = j10 & 576460752303423487L;
        jArr2[1] = ((j10 >>> 59) ^ (j11 << 5)) & 576460752303423487L;
        jArr2[2] = ((j11 >>> 54) ^ (j12 << 10)) & 576460752303423487L;
        jArr2[3] = (j12 >>> 49) ^ (j13 << 15);
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
        jArr2[i10] = jArr2[i10] ^ (576460752303423487L & j16);
        int i14 = i10 + 1;
        jArr2[i14] = jArr2[i14] ^ ((j16 >>> 59) ^ (j17 << 5));
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
        t(n10, 58, n11);
        m(n11, n10, n11);
        t(n11, 116, n10);
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
        long j18 = j15 ^ (j17 >>> 31);
        long j19 = (j14 ^ ((j17 >>> 41) ^ (j17 << 33))) ^ (j16 >>> 31);
        long j20 = ((j13 ^ (j17 << 23)) ^ ((j16 >>> 41) ^ (j16 << 33))) ^ (j18 >>> 31);
        long j21 = j10 ^ (j19 << 23);
        long j22 = (j11 ^ (j18 << 23)) ^ ((j19 >>> 41) ^ (j19 << 33));
        long j23 = ((j12 ^ (j16 << 23)) ^ ((j18 >>> 41) ^ (j18 << 33))) ^ (j19 >>> 31);
        long j24 = j20 >>> 41;
        jArr2[0] = j21 ^ j24;
        jArr2[1] = (j24 << 10) ^ j22;
        jArr2[2] = j23;
        jArr2[3] = f97428a & j20;
    }

    public static void p(long[] jArr, int i10) {
        int i11 = i10 + 3;
        long j10 = jArr[i11];
        long j11 = j10 >>> 41;
        jArr[i10] = jArr[i10] ^ j11;
        int i12 = i10 + 1;
        jArr[i12] = (j11 << 10) ^ jArr[i12];
        jArr[i11] = j10 & f97428a;
    }

    public static void q(long[] jArr, long[] jArr2) {
        long m10 = C15316b.m(jArr[0]);
        long m11 = C15316b.m(jArr[1]);
        long j10 = (m10 & 4294967295L) | (m11 << 32);
        long j11 = (m10 >>> 32) | (m11 & C12510d2.f66536l);
        long m12 = C15316b.m(jArr[2]);
        long m13 = C15316b.m(jArr[3]);
        long j12 = (4294967295L & m12) | (m13 << 32);
        long j13 = (m12 >>> 32) | (C12510d2.f66536l & m13);
        long j14 = j13 >>> 27;
        long j15 = j13 ^ ((j11 >>> 27) | (j13 << 37));
        long j16 = j11 ^ (j11 << 37);
        long[] p10 = AbstractC15323i.p();
        int[] iArr = {32, 117, 191};
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = iArr[i10];
            int i12 = i11 >>> 6;
            int i13 = i11 & 63;
            p10[i12] = p10[i12] ^ (j16 << i13);
            int i14 = i12 + 1;
            int i15 = -i13;
            p10[i14] = p10[i14] ^ ((j15 << i13) | (j16 >>> i15));
            int i16 = i12 + 2;
            p10[i16] = p10[i16] ^ ((j14 << i13) | (j15 >>> i15));
            int i17 = i12 + 3;
            p10[i17] = p10[i17] ^ (j14 >>> i15);
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
        return ((int) (jArr[0] ^ (jArr[2] >>> 31))) & 1;
    }
}
