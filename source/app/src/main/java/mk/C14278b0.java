package mk;

import com.google.common.collect.C12510d2;
import java.math.BigInteger;
import sk.AbstractC15321g;
import sk.AbstractC15329o;
import sk.C15316b;

public class C14278b0 {

    public static final long f97305a = 7;

    public static final long f97306b = 17592186044415L;

    public static final long[] f97307c = {2791191049453778211L, 2791191049453778402L, 6};

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
        jArr3[4] = jArr2[4] ^ jArr[4];
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
        return AbstractC15329o.V(131, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(5);
        AbstractC15321g.i(jArr, jArr2);
        for (int i10 = 1; i10 < 131; i10 += 2) {
            j(jArr2, F10);
            n(F10, jArr2);
            j(jArr2, F10);
            n(F10, jArr2);
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
        jArr[0] = j10 ^ (j11 << 44);
        jArr[1] = (j11 >>> 20) ^ (j12 << 24);
        jArr[2] = ((j12 >>> 40) ^ (j13 << 4)) ^ (j14 << 48);
        jArr[3] = ((j13 >>> 60) ^ (j15 << 28)) ^ (j14 >>> 16);
        jArr[4] = j15 >>> 36;
        jArr[5] = 0;
    }

    public static void h(long[] jArr, long[] jArr2, long[] jArr3) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = ((jArr[2] << 40) ^ (j11 >>> 24)) & f97306b;
        long j13 = ((j11 << 20) ^ (j10 >>> 44)) & f97306b;
        long j14 = j10 & f97306b;
        long j15 = jArr2[0];
        long j16 = jArr2[1];
        long j17 = ((j16 >>> 24) ^ (jArr2[2] << 40)) & f97306b;
        long j18 = ((j16 << 20) ^ (j15 >>> 44)) & f97306b;
        long j19 = j15 & f97306b;
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
        long j37 = (((j32 ^ j29) ^ (j36 << 4)) ^ (j36 << 1)) ^ (j35 >>> 44);
        long j38 = j35 & f97306b;
        long j39 = (j33 ^ j27) ^ (j37 >>> 44);
        long j40 = (j38 >>> 1) ^ ((j37 & 1) << 43);
        long j41 = ((j37 & f97306b) >>> 1) ^ ((j39 & 1) << 43);
        long j42 = j40 ^ (j40 << 1);
        long j43 = j42 ^ (j42 << 2);
        long j44 = j43 ^ (j43 << 4);
        long j45 = j44 ^ (j44 << 8);
        long j46 = j45 ^ (j45 << 16);
        long j47 = (j46 ^ (j46 << 32)) & f97306b;
        long j48 = j41 ^ (j47 >>> 43);
        long j49 = j48 ^ (j48 << 1);
        long j50 = j49 ^ (j49 << 2);
        long j51 = j50 ^ (j50 << 4);
        long j52 = j51 ^ (j51 << 8);
        long j53 = j52 ^ (j52 << 16);
        long j54 = (j53 ^ (j53 << 32)) & f97306b;
        long j55 = (j54 >>> 43) ^ (j39 >>> 1);
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
        int i11 = (int) j10;
        long j16 = (((jArr[i11 & 7] ^ (jArr[(i11 >>> 3) & 7] << 3)) ^ (jArr[(i11 >>> 6) & 7] << 6)) ^ (jArr[(i11 >>> 9) & 7] << 9)) ^ (jArr[(i11 >>> 12) & 7] << 12);
        long j17 = 0;
        int i12 = 30;
        do {
            int i13 = (int) (j10 >>> i12);
            long j18 = (((jArr[i13 & 7] ^ (jArr[(i13 >>> 3) & 7] << 3)) ^ (jArr[(i13 >>> 6) & 7] << 6)) ^ (jArr[(i13 >>> 9) & 7] << 9)) ^ (jArr[(i13 >>> 12) & 7] << 12);
            j16 ^= j18 << i12;
            j17 ^= j18 >>> (-i12);
            i12 -= 15;
        } while (i12 > 0);
        jArr2[i10] = f97306b & j16;
        jArr2[i10 + 1] = (j16 >>> 44) ^ (j17 << 20);
    }

    public static void j(long[] jArr, long[] jArr2) {
        C15316b.d(jArr, 0, 2, jArr2, 0);
        jArr2[4] = C15316b.f((int) jArr[2]) & 4294967295L;
    }

    public static void k(long[] jArr, long[] jArr2) {
        if (AbstractC15321g.y(jArr)) {
            throw new IllegalStateException();
        }
        long[] k10 = AbstractC15321g.k();
        long[] k11 = AbstractC15321g.k();
        q(jArr, k10);
        l(k10, jArr, k10);
        s(k10, 2, k11);
        l(k11, k10, k11);
        s(k11, 4, k10);
        l(k10, k11, k10);
        s(k10, 8, k11);
        l(k11, k10, k11);
        s(k11, 16, k10);
        l(k10, k11, k10);
        s(k10, 32, k11);
        l(k11, k10, k11);
        q(k11, k11);
        l(k11, jArr, k11);
        s(k11, 65, k10);
        l(k10, k11, k10);
        q(k10, jArr2);
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
        long j15 = j13 ^ (j14 >>> 59);
        long j16 = j10 ^ ((j15 << 61) ^ (j15 << 63));
        long j17 = (j11 ^ ((j14 << 61) ^ (j14 << 63))) ^ ((((j15 >>> 3) ^ (j15 >>> 1)) ^ j15) ^ (j15 << 5));
        long j18 = (j12 ^ ((((j14 >>> 3) ^ (j14 >>> 1)) ^ j14) ^ (j14 << 5))) ^ (j15 >>> 59);
        long j19 = j18 >>> 3;
        jArr2[0] = (((j16 ^ j19) ^ (j19 << 2)) ^ (j19 << 3)) ^ (j19 << 8);
        jArr2[1] = (j18 >>> 59) ^ j17;
        jArr2[2] = 7 & j18;
    }

    public static void o(long[] jArr, int i10) {
        int i11 = i10 + 2;
        long j10 = jArr[i11];
        long j11 = j10 >>> 3;
        jArr[i10] = ((j11 << 8) ^ (((j11 << 2) ^ j11) ^ (j11 << 3))) ^ jArr[i10];
        int i12 = i10 + 1;
        jArr[i12] = jArr[i12] ^ (j10 >>> 59);
        jArr[i11] = j10 & 7;
    }

    public static void p(long[] jArr, long[] jArr2) {
        long[] k10 = AbstractC15321g.k();
        long m10 = C15316b.m(jArr[0]);
        long m11 = C15316b.m(jArr[1]);
        long j10 = (m10 & 4294967295L) | (m11 << 32);
        k10[0] = (m10 >>> 32) | (m11 & C12510d2.f66536l);
        long m12 = C15316b.m(jArr[2]);
        k10[1] = m12 >>> 32;
        l(k10, f97307c, jArr2);
        jArr2[0] = jArr2[0] ^ j10;
        jArr2[1] = jArr2[1] ^ (m12 & 4294967295L);
    }

    public static void q(long[] jArr, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(5);
        j(jArr, F10);
        n(F10, jArr2);
    }

    public static void r(long[] jArr, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(5);
        j(jArr, F10);
        b(jArr2, F10, jArr2);
    }

    public static void s(long[] jArr, int i10, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(5);
        j(jArr, F10);
        while (true) {
            n(F10, jArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                j(jArr2, F10);
            }
        }
    }

    public static int t(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[1] >>> 59)) ^ (jArr[2] >>> 1))) & 1;
    }
}
