package mk;

import com.google.common.collect.C12510d2;
import java.math.BigInteger;
import sk.AbstractC15321g;
import sk.AbstractC15329o;
import sk.C15316b;

public class C14290h0 {

    public static final long f97344a = 34359738367L;

    public static final long f97345b = 36028797018963967L;

    public static final long[] f97346c = {-5270498306774157648L, 5270498306774195053L, 19634136210L};

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr2[2] ^ jArr[2];
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr2[5] ^ jArr[5];
    }

    public static void c(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    public static void d(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
    }

    public static long[] e(BigInteger bigInteger) {
        return AbstractC15329o.V(163, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] m10 = AbstractC15321g.m();
        AbstractC15321g.i(jArr, jArr2);
        for (int i10 = 1; i10 < 163; i10 += 2) {
            j(jArr2, m10);
            n(m10, jArr2);
            j(jArr2, m10);
            n(m10, jArr2);
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
        jArr[0] = j10 ^ (j11 << 55);
        jArr[1] = (j11 >>> 9) ^ (j12 << 46);
        jArr[2] = (j12 >>> 18) ^ (j13 << 37);
        jArr[3] = (j13 >>> 27) ^ (j14 << 28);
        jArr[4] = (j14 >>> 36) ^ (j15 << 19);
        jArr[5] = j15 >>> 45;
    }

    public static void h(long[] jArr, long[] jArr2, long[] jArr3) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = (j11 >>> 46) ^ (jArr[2] << 18);
        long j13 = ((j11 << 9) ^ (j10 >>> 55)) & f97345b;
        long j14 = j10 & f97345b;
        long j15 = jArr2[0];
        long j16 = jArr2[1];
        long j17 = (j16 >>> 46) ^ (jArr2[2] << 18);
        long j18 = ((j16 << 9) ^ (j15 >>> 55)) & f97345b;
        long j19 = j15 & f97345b;
        long[] jArr4 = new long[10];
        i(jArr3, j14, j19, jArr4, 0);
        i(jArr3, j12, j17, jArr4, 2);
        long j20 = (j14 ^ j13) ^ j12;
        long j21 = (j19 ^ j18) ^ j17;
        i(jArr3, j20, j21, jArr4, 4);
        long j22 = (j13 << 1) ^ (j12 << 2);
        long j23 = (j18 << 1) ^ (j17 << 2);
        i(jArr3, j14 ^ j22, j19 ^ j23, jArr4, 6);
        i(jArr3, j20 ^ j22, j21 ^ j23, jArr4, 8);
        long j24 = jArr4[6];
        long j25 = jArr4[8] ^ j24;
        long j26 = jArr4[7];
        long j27 = jArr4[9] ^ j26;
        long j28 = (j25 << 1) ^ j24;
        long j29 = (j25 ^ (j27 << 1)) ^ j26;
        long j30 = jArr4[0];
        long j31 = jArr4[1];
        long j32 = (j31 ^ j30) ^ jArr4[4];
        long j33 = j31 ^ jArr4[5];
        long j34 = jArr4[2];
        long j35 = ((j28 ^ j30) ^ (j34 << 4)) ^ (j34 << 1);
        long j36 = jArr4[3];
        long j37 = (((j32 ^ j29) ^ (j36 << 4)) ^ (j36 << 1)) ^ (j35 >>> 55);
        long j38 = j35 & f97345b;
        long j39 = (j33 ^ j27) ^ (j37 >>> 55);
        long j40 = (j38 >>> 1) ^ ((j37 & 1) << 54);
        long j41 = ((j37 & f97345b) >>> 1) ^ ((j39 & 1) << 54);
        long j42 = j40 ^ (j40 << 1);
        long j43 = j42 ^ (j42 << 2);
        long j44 = j43 ^ (j43 << 4);
        long j45 = j44 ^ (j44 << 8);
        long j46 = j45 ^ (j45 << 16);
        long j47 = (j46 ^ (j46 << 32)) & f97345b;
        long j48 = j41 ^ (j47 >>> 54);
        long j49 = j48 ^ (j48 << 1);
        long j50 = j49 ^ (j49 << 2);
        long j51 = j50 ^ (j50 << 4);
        long j52 = j51 ^ (j51 << 8);
        long j53 = j52 ^ (j52 << 16);
        long j54 = (j53 ^ (j53 << 32)) & f97345b;
        long j55 = (j39 >>> 1) ^ (j54 >>> 54);
        long j56 = j55 ^ (j55 << 1);
        long j57 = j56 ^ (j56 << 2);
        long j58 = j57 ^ (j57 << 4);
        long j59 = j58 ^ (j58 << 8);
        long j60 = j59 ^ (j59 << 16);
        long j61 = j60 ^ (j60 << 32);
        jArr3[0] = j30;
        jArr3[1] = (j32 ^ j47) ^ j34;
        jArr3[2] = (j47 ^ (j33 ^ j54)) ^ j36;
        jArr3[3] = j61 ^ j54;
        jArr3[4] = jArr4[2] ^ j61;
        jArr3[5] = jArr4[3];
        g(jArr3);
    }

    public static void i(long[] jArr, long j10, long j11, long[] jArr2, int i10) {
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
        long j16 = jArr[((int) j10) & 3];
        long j17 = 0;
        int i11 = 47;
        do {
            int i12 = (int) (j10 >>> i11);
            long j18 = (jArr[i12 & 7] ^ (jArr[(i12 >>> 3) & 7] << 3)) ^ (jArr[(i12 >>> 6) & 7] << 6);
            j16 ^= j18 << i11;
            j17 ^= j18 >>> (-i11);
            i11 -= 9;
        } while (i11 > 0);
        jArr2[i10] = f97345b & j16;
        jArr2[i10 + 1] = (j16 >>> 55) ^ (j17 << 9);
    }

    public static void j(long[] jArr, long[] jArr2) {
        C15316b.d(jArr, 0, 3, jArr2, 0);
    }

    public static void k(long[] jArr, long[] jArr2) {
        if (AbstractC15321g.y(jArr)) {
            throw new IllegalStateException();
        }
        long[] k10 = AbstractC15321g.k();
        long[] k11 = AbstractC15321g.k();
        q(jArr, k10);
        s(k10, 1, k11);
        l(k10, k11, k10);
        s(k11, 1, k11);
        l(k10, k11, k10);
        s(k10, 3, k11);
        l(k10, k11, k10);
        s(k11, 3, k11);
        l(k10, k11, k10);
        s(k10, 9, k11);
        l(k10, k11, k10);
        s(k11, 9, k11);
        l(k10, k11, k10);
        s(k10, 27, k11);
        l(k10, k11, k10);
        s(k11, 27, k11);
        l(k10, k11, k10);
        s(k10, 81, k11);
        l(k10, k11, jArr2);
    }

    public static void l(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        h(jArr, jArr2, jArr4);
        n(jArr4, jArr3);
    }

    public static void m(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        h(jArr, jArr2, jArr4);
        b(jArr3, jArr4, jArr3);
    }

    public static void n(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = j13 ^ ((((j15 >>> 35) ^ (j15 >>> 32)) ^ (j15 >>> 29)) ^ (j15 >>> 28));
        long j17 = (j12 ^ ((((j15 << 29) ^ (j15 << 32)) ^ (j15 << 35)) ^ (j15 << 36))) ^ ((j14 >>> 28) ^ (((j14 >>> 35) ^ (j14 >>> 32)) ^ (j14 >>> 29)));
        long j18 = j10 ^ ((((j16 << 29) ^ (j16 << 32)) ^ (j16 << 35)) ^ (j16 << 36));
        long j19 = (j11 ^ ((((j14 << 29) ^ (j14 << 32)) ^ (j14 << 35)) ^ (j14 << 36))) ^ ((j16 >>> 28) ^ (((j16 >>> 35) ^ (j16 >>> 32)) ^ (j16 >>> 29)));
        long j20 = j17 >>> 35;
        jArr2[0] = (((j18 ^ j20) ^ (j20 << 3)) ^ (j20 << 6)) ^ (j20 << 7);
        jArr2[1] = j19;
        jArr2[2] = f97344a & j17;
    }

    public static void o(long[] jArr, int i10) {
        int i11 = i10 + 2;
        long j10 = jArr[i11];
        long j11 = j10 >>> 35;
        jArr[i10] = ((j11 << 7) ^ (((j11 << 3) ^ j11) ^ (j11 << 6))) ^ jArr[i10];
        jArr[i11] = j10 & f97344a;
    }

    public static void p(long[] jArr, long[] jArr2) {
        long[] k10 = AbstractC15321g.k();
        long m10 = C15316b.m(jArr[0]);
        long m11 = C15316b.m(jArr[1]);
        long j10 = (m10 & 4294967295L) | (m11 << 32);
        k10[0] = (m10 >>> 32) | (m11 & C12510d2.f66536l);
        long m12 = C15316b.m(jArr[2]);
        k10[1] = m12 >>> 32;
        l(k10, f97346c, jArr2);
        jArr2[0] = jArr2[0] ^ j10;
        jArr2[1] = jArr2[1] ^ (m12 & 4294967295L);
    }

    public static void q(long[] jArr, long[] jArr2) {
        long[] m10 = AbstractC15321g.m();
        j(jArr, m10);
        n(m10, jArr2);
    }

    public static void r(long[] jArr, long[] jArr2) {
        long[] m10 = AbstractC15321g.m();
        j(jArr, m10);
        b(jArr2, m10, jArr2);
    }

    public static void s(long[] jArr, int i10, long[] jArr2) {
        long[] m10 = AbstractC15321g.m();
        j(jArr, m10);
        while (true) {
            n(m10, jArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                j(jArr2, m10);
            }
        }
    }

    public static int t(long[] jArr) {
        return ((int) (jArr[0] ^ (jArr[2] >>> 29))) & 1;
    }
}
