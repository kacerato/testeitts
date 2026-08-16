package mk;

import com.google.common.collect.C12510d2;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import sk.AbstractC15326l;
import sk.AbstractC15329o;
import sk.C15316b;

public class L0 {

    public static final long f97219a = 33554431;

    public static final long f97220b = 576460752303423487L;

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i10 = 0; i10 < 13; i10++) {
            jArr3[i10] = jArr[i10] ^ jArr2[i10];
        }
    }

    public static void c(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    public static void d(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
        jArr2[2] = jArr2[2] ^ jArr[2];
        jArr2[3] = jArr2[3] ^ jArr[3];
        jArr2[4] = jArr2[4] ^ jArr[4];
        jArr2[5] = jArr2[5] ^ jArr[5];
        jArr2[6] = jArr2[6] ^ jArr[6];
    }

    public static long[] e(BigInteger bigInteger) {
        return AbstractC15329o.V(HttpURLConnection.HTTP_CONFLICT, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(13);
        AbstractC15326l.b(jArr, jArr2);
        for (int i10 = 1; i10 < 409; i10 += 2) {
            k(jArr2, F10);
            o(F10, jArr2);
            k(jArr2, F10);
            o(F10, jArr2);
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
        long j18 = jArr[8];
        long j19 = jArr[9];
        long j20 = jArr[10];
        long j21 = jArr[11];
        long j22 = jArr[12];
        long j23 = jArr[13];
        jArr[0] = j10 ^ (j11 << 59);
        jArr[1] = (j11 >>> 5) ^ (j12 << 54);
        jArr[2] = (j12 >>> 10) ^ (j13 << 49);
        jArr[3] = (j13 >>> 15) ^ (j14 << 44);
        jArr[4] = (j14 >>> 20) ^ (j15 << 39);
        jArr[5] = (j15 >>> 25) ^ (j16 << 34);
        jArr[6] = (j16 >>> 30) ^ (j17 << 29);
        jArr[7] = (j17 >>> 35) ^ (j18 << 24);
        jArr[8] = (j18 >>> 40) ^ (j19 << 19);
        jArr[9] = (j19 >>> 45) ^ (j20 << 14);
        jArr[10] = (j20 >>> 50) ^ (j21 << 9);
        jArr[11] = ((j21 >>> 55) ^ (j22 << 4)) ^ (j23 << 63);
        jArr[12] = j23 >>> 1;
    }

    public static void h(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        jArr2[0] = j10 & 576460752303423487L;
        jArr2[1] = ((j10 >>> 59) ^ (j11 << 5)) & 576460752303423487L;
        jArr2[2] = ((j11 >>> 54) ^ (j12 << 10)) & 576460752303423487L;
        jArr2[3] = ((j12 >>> 49) ^ (j13 << 15)) & 576460752303423487L;
        jArr2[4] = ((j13 >>> 44) ^ (j14 << 20)) & 576460752303423487L;
        jArr2[5] = ((j14 >>> 39) ^ (j15 << 25)) & 576460752303423487L;
        jArr2[6] = (j15 >>> 34) ^ (j16 << 30);
    }

    public static void i(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[7];
        long[] jArr5 = new long[7];
        h(jArr, jArr4);
        h(jArr2, jArr5);
        long[] jArr6 = new long[8];
        for (int i10 = 0; i10 < 7; i10++) {
            j(jArr6, jArr4[i10], jArr5[i10], jArr3, i10 << 1);
        }
        long j10 = jArr3[0];
        long j11 = jArr3[1];
        long j12 = jArr3[2] ^ j10;
        long j13 = j12 ^ j11;
        jArr3[1] = j13;
        long j14 = j11 ^ jArr3[3];
        long j15 = j12 ^ jArr3[4];
        long j16 = j15 ^ j14;
        jArr3[2] = j16;
        long j17 = j14 ^ jArr3[5];
        long j18 = j15 ^ jArr3[6];
        long j19 = j18 ^ j17;
        jArr3[3] = j19;
        long j20 = j17 ^ jArr3[7];
        long j21 = j18 ^ jArr3[8];
        long j22 = j21 ^ j20;
        jArr3[4] = j22;
        long j23 = j20 ^ jArr3[9];
        long j24 = j21 ^ jArr3[10];
        long j25 = j24 ^ j23;
        jArr3[5] = j25;
        long j26 = j23 ^ jArr3[11];
        long j27 = j24 ^ jArr3[12];
        long j28 = j27 ^ j26;
        jArr3[6] = j28;
        long j29 = (j26 ^ jArr3[13]) ^ j27;
        jArr3[7] = j10 ^ j29;
        jArr3[8] = j13 ^ j29;
        jArr3[9] = j16 ^ j29;
        jArr3[10] = j19 ^ j29;
        jArr3[11] = j22 ^ j29;
        jArr3[12] = j25 ^ j29;
        jArr3[13] = j28 ^ j29;
        j(jArr6, jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        j(jArr6, jArr4[0] ^ jArr4[2], jArr5[0] ^ jArr5[2], jArr3, 2);
        j(jArr6, jArr4[0] ^ jArr4[3], jArr5[0] ^ jArr5[3], jArr3, 3);
        j(jArr6, jArr4[1] ^ jArr4[2], jArr5[1] ^ jArr5[2], jArr3, 3);
        j(jArr6, jArr4[0] ^ jArr4[4], jArr5[0] ^ jArr5[4], jArr3, 4);
        j(jArr6, jArr4[1] ^ jArr4[3], jArr5[1] ^ jArr5[3], jArr3, 4);
        j(jArr6, jArr4[0] ^ jArr4[5], jArr5[0] ^ jArr5[5], jArr3, 5);
        j(jArr6, jArr4[1] ^ jArr4[4], jArr5[1] ^ jArr5[4], jArr3, 5);
        j(jArr6, jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 5);
        j(jArr6, jArr4[0] ^ jArr4[6], jArr5[0] ^ jArr5[6], jArr3, 6);
        j(jArr6, jArr4[1] ^ jArr4[5], jArr5[1] ^ jArr5[5], jArr3, 6);
        j(jArr6, jArr4[2] ^ jArr4[4], jArr5[2] ^ jArr5[4], jArr3, 6);
        j(jArr6, jArr4[1] ^ jArr4[6], jArr5[1] ^ jArr5[6], jArr3, 7);
        j(jArr6, jArr4[2] ^ jArr4[5], jArr5[2] ^ jArr5[5], jArr3, 7);
        j(jArr6, jArr4[3] ^ jArr4[4], jArr5[3] ^ jArr5[4], jArr3, 7);
        j(jArr6, jArr4[2] ^ jArr4[6], jArr5[2] ^ jArr5[6], jArr3, 8);
        j(jArr6, jArr4[3] ^ jArr4[5], jArr5[3] ^ jArr5[5], jArr3, 8);
        j(jArr6, jArr4[3] ^ jArr4[6], jArr5[3] ^ jArr5[6], jArr3, 9);
        j(jArr6, jArr4[4] ^ jArr4[5], jArr5[4] ^ jArr5[5], jArr3, 9);
        j(jArr6, jArr4[4] ^ jArr4[6], jArr5[4] ^ jArr5[6], jArr3, 10);
        j(jArr6, jArr4[5] ^ jArr4[6], jArr5[5] ^ jArr5[6], jArr3, 11);
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
        C15316b.d(jArr, 0, 6, jArr2, 0);
        jArr2[12] = C15316b.b((int) jArr[6]);
    }

    public static void l(long[] jArr, long[] jArr2) {
        if (AbstractC15326l.h(jArr)) {
            throw new IllegalStateException();
        }
        long[] c10 = AbstractC15326l.c();
        long[] c11 = AbstractC15326l.c();
        long[] c12 = AbstractC15326l.c();
        r(jArr, c10);
        t(c10, 1, c11);
        m(c10, c11, c10);
        t(c11, 1, c11);
        m(c10, c11, c10);
        t(c10, 3, c11);
        m(c10, c11, c10);
        t(c10, 6, c11);
        m(c10, c11, c10);
        t(c10, 12, c11);
        m(c10, c11, c12);
        t(c12, 24, c10);
        t(c10, 24, c11);
        m(c10, c11, c10);
        t(c10, 48, c11);
        m(c10, c11, c10);
        t(c10, 96, c11);
        m(c10, c11, c10);
        t(c10, 192, c11);
        m(c10, c11, c10);
        m(c10, c12, jArr2);
    }

    public static void m(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] d10 = AbstractC15326l.d();
        i(jArr, jArr2, d10);
        o(d10, jArr3);
    }

    public static void n(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] d10 = AbstractC15326l.d();
        i(jArr, jArr2, d10);
        b(jArr3, d10, jArr3);
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
        long j18 = jArr[12];
        long j19 = j15 ^ (j18 << 39);
        long j20 = j16 ^ ((j18 >>> 25) ^ (j18 << 62));
        long j21 = j17 ^ (j18 >>> 2);
        long j22 = jArr[11];
        long j23 = j14 ^ (j22 << 39);
        long j24 = j19 ^ ((j22 >>> 25) ^ (j22 << 62));
        long j25 = j20 ^ (j22 >>> 2);
        long j26 = jArr[10];
        long j27 = j13 ^ (j26 << 39);
        long j28 = j23 ^ ((j26 >>> 25) ^ (j26 << 62));
        long j29 = j24 ^ (j26 >>> 2);
        long j30 = jArr[9];
        long j31 = j12 ^ (j30 << 39);
        long j32 = j27 ^ ((j30 >>> 25) ^ (j30 << 62));
        long j33 = j28 ^ (j30 >>> 2);
        long j34 = jArr[8];
        long j35 = j10 ^ (j21 << 39);
        long j36 = (j11 ^ (j34 << 39)) ^ ((j21 >>> 25) ^ (j21 << 62));
        long j37 = (j31 ^ ((j34 >>> 25) ^ (j34 << 62))) ^ (j21 >>> 2);
        long j38 = j25 >>> 25;
        jArr2[0] = j35 ^ j38;
        jArr2[1] = (j38 << 23) ^ j36;
        jArr2[2] = j37;
        jArr2[3] = j32 ^ (j34 >>> 2);
        jArr2[4] = j33;
        jArr2[5] = j29;
        jArr2[6] = j25 & f97219a;
    }

    public static void p(long[] jArr, int i10) {
        int i11 = i10 + 6;
        long j10 = jArr[i11];
        long j11 = j10 >>> 25;
        jArr[i10] = jArr[i10] ^ j11;
        int i12 = i10 + 1;
        jArr[i12] = (j11 << 23) ^ jArr[i12];
        jArr[i11] = j10 & f97219a;
    }

    public static void q(long[] jArr, long[] jArr2) {
        long m10 = C15316b.m(jArr[0]);
        long m11 = C15316b.m(jArr[1]);
        long j10 = (m10 & 4294967295L) | (m11 << 32);
        long j11 = (m10 >>> 32) | (m11 & C12510d2.f66536l);
        long m12 = C15316b.m(jArr[2]);
        long m13 = C15316b.m(jArr[3]);
        long j12 = (m12 & 4294967295L) | (m13 << 32);
        long j13 = (m12 >>> 32) | (m13 & C12510d2.f66536l);
        long m14 = C15316b.m(jArr[4]);
        long m15 = C15316b.m(jArr[5]);
        long j14 = (m14 >>> 32) | (m15 & C12510d2.f66536l);
        long m16 = C15316b.m(jArr[6]);
        long j15 = m16 >>> 32;
        jArr2[0] = j10 ^ (j11 << 44);
        jArr2[1] = (j12 ^ (j13 << 44)) ^ (j11 >>> 20);
        jArr2[2] = (((m14 & 4294967295L) | (m15 << 32)) ^ (j14 << 44)) ^ (j13 >>> 20);
        jArr2[3] = (((j15 << 44) ^ (m16 & 4294967295L)) ^ (j14 >>> 20)) ^ (j11 << 13);
        jArr2[4] = (j11 >>> 51) ^ ((m16 >>> 52) ^ (j13 << 13));
        jArr2[5] = (j14 << 13) ^ (j13 >>> 51);
        jArr2[6] = (j15 << 13) ^ (j14 >>> 51);
    }

    public static void r(long[] jArr, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(13);
        k(jArr, F10);
        o(F10, jArr2);
    }

    public static void s(long[] jArr, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(13);
        k(jArr, F10);
        b(jArr2, F10, jArr2);
    }

    public static void t(long[] jArr, int i10, long[] jArr2) {
        long[] F10 = AbstractC15329o.F(13);
        k(jArr, F10);
        while (true) {
            o(F10, jArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                k(jArr2, F10);
            }
        }
    }

    public static int u(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
