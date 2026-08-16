package sk;

import java.util.Random;

public abstract class AbstractC15317c {

    public static final int f109663a = 1073741823;

    public static final long f109664b = 4294967295L;

    public static int a(int i10, int[] iArr, int[] iArr2) {
        int i11 = i10 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + iArr[i13] + iArr2[i13];
            iArr[i13] = 1073741823 & i14;
            i12 = i14 >> 30;
        }
        int i15 = i12 + iArr[i11] + iArr2[i11];
        iArr[i11] = i15;
        return i15 >> 30;
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (o(iArr, iArr2, iArr3) == 0) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3) {
        if (!p(iArr, iArr2, iArr3)) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    public static void d(int i10, int i11, int[] iArr) {
        int i12 = i10 - 1;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = i13 + ((iArr[i14] ^ i11) - i11);
            iArr[i14] = 1073741823 & i15;
            i13 = i15 >> 30;
        }
        iArr[i12] = i13 + ((iArr[i12] ^ i11) - i11);
    }

    public static void e(int i10, int i11, int[] iArr, int[] iArr2) {
        int i12 = i10 - 1;
        int i13 = iArr[i12] >> 31;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = i14 + (((iArr[i15] + (iArr2[i15] & i13)) ^ i11) - i11);
            iArr[i15] = 1073741823 & i16;
            i14 = i16 >> 30;
        }
        int i17 = i14 + (((iArr[i12] + (i13 & iArr2[i12])) ^ i11) - i11);
        iArr[i12] = i17;
        int i18 = i17 >> 31;
        int i19 = 0;
        for (int i20 = 0; i20 < i12; i20++) {
            int i21 = i19 + iArr[i20] + (iArr2[i20] & i18);
            iArr[i20] = i21 & 1073741823;
            i19 = i21 >> 30;
        }
        iArr[i12] = i19 + iArr[i12] + (i18 & iArr2[i12]);
    }

    public static void f(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0;
        long j10 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 > 0) {
            while (i11 < Math.min(32, i10)) {
                j10 |= iArr[i12] << i11;
                i11 += 30;
                i12++;
            }
            iArr2[i13] = (int) j10;
            j10 >>>= 32;
            i11 -= 32;
            i10 -= 32;
            i13++;
        }
    }

    public static int g(int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14 = i11;
        int i15 = i12;
        int i16 = 1;
        int i17 = 1;
        int i18 = 0;
        int i19 = 0;
        int i20 = 30;
        int i21 = i10;
        while (true) {
            int e10 = org.bouncycastle.util.k.e(((-1) << i20) | i15);
            int i22 = i15 >> e10;
            i16 <<= e10;
            i18 <<= e10;
            i21 -= e10;
            i20 -= e10;
            if (i20 <= 0) {
                iArr[0] = i16;
                iArr[1] = i18;
                iArr[2] = i19;
                iArr[3] = i17;
                return i21;
            }
            if (i21 <= 0) {
                i21 = 2 - i21;
                int i23 = -i14;
                int i24 = -i16;
                int i25 = -i18;
                i13 = ((-1) >>> (32 - (i21 > i20 ? i20 : i21))) & 63 & (i22 * i23 * ((i22 * i22) - 2));
                i22 = i23;
                i14 = i22;
                int i26 = i19;
                i19 = i24;
                i16 = i26;
                int i27 = i17;
                i17 = i25;
                i18 = i27;
            } else {
                i13 = ((-1) >>> (32 - (i21 > i20 ? i20 : i21))) & 15 & (((((i14 + 1) & 4) << 1) + i14) * (-i22));
            }
            i15 = i22 + (i14 * i13);
            i19 += i16 * i13;
            i17 += i13 * i18;
        }
    }

    public static void h(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0;
        long j10 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 > 0) {
            if (i11 < Math.min(30, i10)) {
                j10 |= (iArr[i12] & 4294967295L) << i11;
                i11 += 32;
                i12++;
            }
            iArr2[i13] = ((int) j10) & 1073741823;
            j10 >>>= 30;
            i11 -= 30;
            i10 -= 30;
            i13++;
        }
    }

    public static int i(int i10, int[] iArr, int i11) {
        int i12 = i11 ^ iArr[0];
        for (int i13 = 1; i13 < i10; i13++) {
            i12 |= iArr[i13];
        }
        return (((i12 >>> 1) | (i12 & 1)) - 1) >> 31;
    }

    public static boolean j(int i10, int[] iArr, int i11) {
        int i12 = i11 ^ iArr[0];
        if (i12 != 0) {
            return false;
        }
        for (int i13 = 1; i13 < i10; i13++) {
            i12 |= iArr[i13];
        }
        return i12 == 0;
    }

    public static int k(int i10) {
        return (int) (((i10 * 188898) + (i10 < 46 ? 308405 : 181188)) >>> 16);
    }

    public static int l(int i10) {
        return (int) (((i10 * 150964) + 99243) >>> 16);
    }

    public static int m(int i10, int i11, int i12, int[] iArr) {
        int i13 = 1073741824;
        int i14 = 1073741824;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < 30; i17++) {
            int i18 = i10 >> 31;
            int i19 = -(i12 & 1);
            int i20 = i12 - ((i11 ^ i18) & i19);
            int i21 = i16 - ((i13 ^ i18) & i19);
            int i22 = i14 - ((i15 ^ i18) & i19);
            int i23 = (~i18) & i19;
            i10 = (i10 ^ i23) + 1;
            i11 += i20 & i23;
            i13 += i21 & i23;
            i15 += i23 & i22;
            i12 = i20 >> 1;
            i16 = i21 >> 1;
            i14 = i22 >> 1;
        }
        iArr[0] = i13;
        iArr[1] = i15;
        iArr[2] = i16;
        iArr[3] = i14;
        return i10;
    }

    public static int n(int i10) {
        int i11 = (2 - (i10 * i10)) * i10;
        int i12 = i11 * (2 - (i10 * i11));
        int i13 = i12 * (2 - (i10 * i12));
        return i13 * (2 - (i10 * i13));
    }

    public static int o(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int d10 = (length << 5) - org.bouncycastle.util.k.d(iArr[length - 1]);
        int i10 = (d10 + 29) / 30;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        char c10 = 0;
        iArr6[0] = 1;
        h(d10, iArr2, iArr8);
        h(d10, iArr, iArr9);
        System.arraycopy(iArr9, 0, iArr7, 0, i10);
        int n10 = n(iArr9[0]);
        int l10 = l(d10);
        int i11 = 0;
        int i12 = 0;
        while (i12 < l10) {
            int m10 = m(i11, iArr7[c10], iArr8[c10], iArr4);
            v(i10, iArr5, iArr6, iArr4, n10, iArr9);
            w(i10, iArr7, iArr8, iArr4);
            i12 += 30;
            i11 = m10;
            l10 = l10;
            c10 = 0;
        }
        int i13 = iArr7[i10 - 1] >> 31;
        d(i10, i13, iArr7);
        e(i10, i13, iArr5, iArr9);
        f(d10, iArr5, iArr3);
        return i(i10, iArr7, 1) & i(i10, iArr8, 0);
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static boolean p(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int d10 = (length << 5) - org.bouncycastle.util.k.d(iArr[length - 1]);
        int i10 = (d10 + 29) / 30;
        int X10 = d10 - AbstractC15329o.X(length, iArr2);
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        boolean z10 = 0;
        iArr6[0] = 1;
        h(d10, iArr2, iArr8);
        h(d10, iArr, iArr9);
        System.arraycopy(iArr9, 0, iArr7, 0, i10);
        int i11 = -X10;
        int n10 = n(iArr9[0]);
        int k10 = k(d10);
        int i12 = i10;
        while (!j(i12, iArr8, z10)) {
            if (X10 >= k10) {
                return z10;
            }
            X10 += 30;
            int g10 = g(i11, iArr7[z10], iArr8[z10], iArr4);
            int i13 = i12;
            v(i10, iArr5, iArr6, iArr4, n10, iArr9);
            w(i13, iArr7, iArr8, iArr4);
            i12 = u(i13, iArr7, iArr8);
            i11 = g10;
            k10 = k10;
            z10 = z10;
        }
        int i14 = i12;
        boolean z11 = z10;
        int i15 = iArr7[i14 - 1] >> 31;
        int i16 = iArr5[i10 - 1] >> 31;
        if (i16 < 0) {
            i16 = a(i10, iArr5, iArr9);
        }
        if (i15 < 0) {
            i16 = s(i10, iArr5);
            s(i14, iArr7);
        }
        if (!j(i14, iArr7, 1)) {
            return z11;
        }
        if (i16 < 0) {
            a(i10, iArr5, iArr9);
        }
        f(d10, iArr5, iArr3);
        return true;
    }

    public static int q(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int d10 = (length << 5) - org.bouncycastle.util.k.d(iArr[length - 1]);
        int i10 = (d10 + 29) / 30;
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[i10];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        h(d10, iArr2, iArr5);
        h(d10, iArr, iArr6);
        System.arraycopy(iArr6, 0, iArr4, 0, i10);
        int l10 = l(d10);
        int i11 = 0;
        for (int i12 = 0; i12 < l10; i12 += 30) {
            i11 = m(i11, iArr4[0], iArr5[0], iArr3);
            w(i10, iArr4, iArr5, iArr3);
        }
        d(i10, iArr4[i10 - 1] >> 31, iArr4);
        return i(i10, iArr5, 0) & i(i10, iArr4, 1);
    }

    public static boolean r(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int d10 = (length << 5) - org.bouncycastle.util.k.d(iArr[length - 1]);
        int i10 = (d10 + 29) / 30;
        int X10 = d10 - AbstractC15329o.X(length, iArr2);
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[i10];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        h(d10, iArr2, iArr5);
        h(d10, iArr, iArr6);
        System.arraycopy(iArr6, 0, iArr4, 0, i10);
        int i11 = -X10;
        int k10 = k(d10);
        while (!j(i10, iArr5, 0)) {
            if (X10 >= k10) {
                return false;
            }
            X10 += 30;
            i11 = g(i11, iArr4[0], iArr5[0], iArr3);
            w(i10, iArr4, iArr5, iArr3);
            i10 = u(i10, iArr4, iArr5);
        }
        if ((iArr4[i10 - 1] >> 31) < 0) {
            s(i10, iArr4);
        }
        return j(i10, iArr4, 1);
    }

    public static int s(int i10, int[] iArr) {
        int i11 = i10 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 - iArr[i13];
            iArr[i13] = 1073741823 & i14;
            i12 = i14 >> 30;
        }
        int i15 = i12 - iArr[i11];
        iArr[i11] = i15;
        return i15 >> 30;
    }

    public static int[] t(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] E10 = AbstractC15329o.E(length);
        int i10 = length - 1;
        int i11 = iArr[i10];
        int i12 = i11 | (i11 >>> 1);
        int i13 = i12 | (i12 >>> 2);
        int i14 = i13 | (i13 >>> 4);
        int i15 = i14 | (i14 >>> 8);
        int i16 = i15 | (i15 >>> 16);
        do {
            for (int i17 = 0; i17 != length; i17++) {
                E10[i17] = random.nextInt();
            }
            E10[i10] = E10[i10] & i16;
        } while (AbstractC15329o.a0(length, E10, iArr));
        return E10;
    }

    public static int u(int i10, int[] iArr, int[] iArr2) {
        int i11 = i10 - 1;
        int i12 = iArr[i11];
        int i13 = iArr2[i11];
        int i14 = i10 - 2;
        if (((i14 >> 31) | ((i12 >> 31) ^ i12) | ((i13 >> 31) ^ i13)) != 0) {
            return i10;
        }
        iArr[i14] = (i12 << 30) | iArr[i14];
        iArr2[i14] = iArr2[i14] | (i13 << 30);
        return i10 - 1;
    }

    public static void v(int i10, int[] iArr, int[] iArr2, int[] iArr3, int i11, int[] iArr4) {
        int i12 = i10;
        int i13 = iArr3[0];
        int i14 = iArr3[1];
        int i15 = iArr3[2];
        int i16 = iArr3[3];
        int i17 = i12 - 1;
        int i18 = iArr[i17] >> 31;
        int i19 = iArr2[i17] >> 31;
        int i20 = (i13 & i18) + (i14 & i19);
        int i21 = (i18 & i15) + (i19 & i16);
        int i22 = iArr4[0];
        long j10 = i13;
        long j11 = iArr[0];
        long j12 = i14;
        long j13 = iArr2[0];
        long j14 = (j10 * j11) + (j12 * j13);
        long j15 = i15;
        long j16 = i16;
        long j17 = (j11 * j15) + (j13 * j16);
        long j18 = i22;
        long j19 = i20 - (((((int) j14) * i11) + i20) & 1073741823);
        int i23 = i17;
        long j20 = i21 - (((((int) j17) * i11) + i21) & 1073741823);
        long j21 = (j17 + (j18 * j20)) >> 30;
        long j22 = (j14 + (j18 * j19)) >> 30;
        int i24 = 1;
        while (i24 < i12) {
            int i25 = iArr4[i24];
            long j23 = j21;
            long j24 = iArr[i24];
            int i26 = i24;
            long j25 = iArr2[i24];
            long j26 = j20;
            long j27 = i25;
            long j28 = j22 + (j10 * j24) + (j12 * j25) + (j27 * j19);
            long j29 = j23 + (j24 * j15) + (j25 * j16) + (j27 * j26);
            int i27 = i26 - 1;
            iArr[i27] = ((int) j28) & 1073741823;
            j22 = j28 >> 30;
            iArr2[i27] = ((int) j29) & 1073741823;
            j21 = j29 >> 30;
            i24 = i26 + 1;
            i12 = i10;
            i23 = i23;
            j20 = j26;
        }
        int i28 = i23;
        iArr[i28] = (int) j22;
        iArr2[i28] = (int) j21;
    }

    public static void w(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        int i11 = iArr3[0];
        int i12 = 1;
        int i13 = iArr3[1];
        int i14 = iArr3[2];
        int i15 = iArr3[3];
        long j10 = i11;
        long j11 = iArr[0];
        long j12 = i13;
        long j13 = iArr2[0];
        long j14 = i14;
        long j15 = i15;
        long j16 = ((j10 * j11) + (j12 * j13)) >> 30;
        long j17 = ((j11 * j14) + (j13 * j15)) >> 30;
        int i16 = 1;
        while (i16 < i10) {
            int i17 = iArr[i16];
            int i18 = iArr2[i16];
            int i19 = i16;
            long j18 = i17;
            long j19 = j10 * j18;
            long j20 = j10;
            long j21 = i18;
            long j22 = j16 + j19 + (j12 * j21);
            long j23 = j17 + (j18 * j14) + (j21 * j15);
            int i20 = i19 - 1;
            iArr[i20] = ((int) j22) & 1073741823;
            j16 = j22 >> 30;
            iArr2[i20] = 1073741823 & ((int) j23);
            j17 = j23 >> 30;
            i16 = i19 + 1;
            j10 = j20;
            i12 = 1;
        }
        int i21 = i10 - i12;
        iArr[i21] = (int) j16;
        iArr2[i21] = (int) j17;
    }
}
