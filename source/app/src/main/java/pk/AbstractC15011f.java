package pk;

import org.bouncycastle.util.k;

public abstract class AbstractC15011f {

    public static final long f104143a = 4294967295L;

    public static void a(int i10, int i11, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int[] iArr5 = iArr4;
        int i12 = 0;
        long j10 = 0;
        if (i11 == 0) {
            long j11 = 0;
            while (i12 <= i10) {
                long j12 = iArr3[i12] & 4294967295L;
                long j13 = j11 + j12 + (iArr2[i12] & 4294967295L);
                int i13 = (int) j13;
                j11 = j13 >>> 32;
                iArr3[i12] = i13;
                long j14 = j10 + (iArr[i12] & 4294967295L) + j12 + (i13 & 4294967295L);
                iArr[i12] = (int) j14;
                j10 = j14 >>> 32;
                i12++;
            }
            return;
        }
        if (i11 < 32) {
            int i14 = 0;
            long j15 = 0;
            long j16 = 0;
            int i15 = 0;
            int i16 = 0;
            while (i12 <= i10) {
                int i17 = iArr3[i12];
                int i18 = -i11;
                long j17 = j15 + (iArr[i12] & 4294967295L) + (((i14 >>> i18) | (i17 << i11)) & 4294967295L);
                int i19 = iArr2[i12];
                long j18 = j16 + (i17 & 4294967295L) + (((i15 >>> i18) | (i19 << i11)) & 4294967295L);
                int i20 = (int) j18;
                j16 = j18 >>> 32;
                iArr3[i12] = i20;
                long j19 = j17 + (((i16 >>> i18) | (i20 << i11)) & 4294967295L);
                iArr[i12] = (int) j19;
                j15 = j19 >>> 32;
                i12++;
                i16 = i20;
                i15 = i19;
                i14 = i17;
            }
            return;
        }
        System.arraycopy(iArr3, 0, iArr5, 0, i10);
        int i21 = i11 >>> 5;
        int i22 = i11 & 31;
        if (i22 == 0) {
            long j20 = 0;
            for (int i23 = i21; i23 <= i10; i23++) {
                int i24 = i23 - i21;
                long j21 = j20 + (iArr3[i23] & 4294967295L) + (iArr2[i24] & 4294967295L);
                iArr3[i23] = (int) j21;
                j20 = j21 >>> 32;
                long j22 = j10 + (iArr[i23] & 4294967295L) + (iArr5[i24] & 4294967295L) + (iArr3[i24] & 4294967295L);
                iArr[i23] = (int) j22;
                j10 = j22 >>> 32;
            }
            return;
        }
        int i25 = i21;
        long j23 = 0;
        long j24 = 0;
        int i26 = 0;
        int i27 = 0;
        while (i25 <= i10) {
            int i28 = i25 - i21;
            int i29 = iArr5[i28];
            int i30 = -i22;
            int i31 = i21;
            long j25 = j23 + (iArr[i25] & 4294967295L) + (((i29 << i22) | (i12 >>> i30)) & 4294967295L);
            int i32 = iArr2[i28];
            long j26 = j24 + (iArr3[i25] & 4294967295L) + (((i32 << i22) | (i26 >>> i30)) & 4294967295L);
            iArr3[i25] = (int) j26;
            j24 = j26 >>> 32;
            int i33 = iArr3[i28];
            long j27 = j25 + (((i27 >>> i30) | (i33 << i22)) & 4294967295L);
            iArr[i25] = (int) j27;
            j23 = j27 >>> 32;
            i25++;
            iArr5 = iArr4;
            i27 = i33;
            i26 = i32;
            i12 = i29;
            i21 = i31;
        }
    }

    public static void b(int i10, int i11, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i12 = i10;
        int i13 = i11 >>> 5;
        int i14 = i11 & 31;
        long j10 = 0;
        if (i14 == 0) {
            long j11 = 0;
            for (int i15 = i13; i15 <= i12; i15++) {
                int i16 = i15 - i13;
                long j12 = j10 + (iArr[i15] & 4294967295L) + (iArr3[i16] & 4294967295L);
                long j13 = j11 + (iArr2[i15] & 4294967295L) + (iArr4[i16] & 4294967295L);
                iArr[i15] = (int) j12;
                j10 = j12 >>> 32;
                iArr2[i15] = (int) j13;
                j11 = j13 >>> 32;
            }
            return;
        }
        int i17 = i13;
        int i18 = 0;
        int i19 = 0;
        long j14 = 0;
        while (i17 <= i12) {
            int i20 = i17 - i13;
            int i21 = iArr3[i20];
            int i22 = iArr4[i20];
            long j15 = j10 + (iArr[i17] & 4294967295L);
            long j16 = j15 + (((i18 >>> (-i14)) | (i21 << i14)) & 4294967295L);
            long j17 = j14 + (iArr2[i17] & 4294967295L) + (((i19 >>> r3) | (i22 << i14)) & 4294967295L);
            iArr[i17] = (int) j16;
            j10 = j16 >>> 32;
            iArr2[i17] = (int) j17;
            j14 = j17 >>> 32;
            i17++;
            i19 = i22;
            i18 = i21;
            i13 = i13;
            i12 = i10;
        }
    }

    public static int c(int i10, int[] iArr) {
        int i11 = iArr[i10] >> 31;
        while (i10 > 0 && iArr[i10] == i11) {
            i10--;
        }
        return ((i10 * 32) + 32) - k.d(iArr[i10] ^ i11);
    }

    public static int d(int i10, int[] iArr) {
        while (i10 > 0 && iArr[i10] == 0) {
            i10--;
        }
        return ((i10 * 32) + 32) - k.d(iArr[i10]);
    }

    public static boolean e(int i10, int[] iArr, int[] iArr2) {
        do {
            int i11 = iArr[i10] - 2147483648;
            int i12 = iArr2[i10] - 2147483648;
            if (i11 < i12) {
                return true;
            }
            if (i11 > i12) {
                return false;
            }
            i10--;
        } while (i10 >= 0);
        return false;
    }

    public static void f(int i10, int i11, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int[] iArr5 = iArr4;
        int i12 = 0;
        long j10 = 0;
        if (i11 == 0) {
            long j11 = 0;
            while (i12 <= i10) {
                long j12 = iArr3[i12] & 4294967295L;
                long j13 = (j11 + j12) - (iArr2[i12] & 4294967295L);
                int i13 = (int) j13;
                j11 = j13 >> 32;
                iArr3[i12] = i13;
                long j14 = ((j10 + (iArr[i12] & 4294967295L)) - j12) - (i13 & 4294967295L);
                iArr[i12] = (int) j14;
                j10 = j14 >> 32;
                i12++;
            }
            return;
        }
        if (i11 < 32) {
            int i14 = 0;
            long j15 = 0;
            long j16 = 0;
            int i15 = 0;
            int i16 = 0;
            while (i12 <= i10) {
                int i17 = iArr3[i12];
                int i18 = -i11;
                long j17 = (j15 + (iArr[i12] & 4294967295L)) - (((i14 >>> i18) | (i17 << i11)) & 4294967295L);
                int i19 = iArr2[i12];
                long j18 = (j16 + (i17 & 4294967295L)) - (((i15 >>> i18) | (i19 << i11)) & 4294967295L);
                int i20 = (int) j18;
                j16 = j18 >> 32;
                iArr3[i12] = i20;
                long j19 = j17 - (((i16 >>> i18) | (i20 << i11)) & 4294967295L);
                iArr[i12] = (int) j19;
                j15 = j19 >> 32;
                i12++;
                i16 = i20;
                i15 = i19;
                i14 = i17;
            }
            return;
        }
        System.arraycopy(iArr3, 0, iArr5, 0, i10);
        int i21 = i11 >>> 5;
        int i22 = i11 & 31;
        if (i22 == 0) {
            long j20 = 0;
            for (int i23 = i21; i23 <= i10; i23++) {
                int i24 = i23 - i21;
                long j21 = (j20 + (iArr3[i23] & 4294967295L)) - (iArr2[i24] & 4294967295L);
                iArr3[i23] = (int) j21;
                j20 = j21 >> 32;
                long j22 = ((j10 + (iArr[i23] & 4294967295L)) - (iArr5[i24] & 4294967295L)) - (iArr3[i24] & 4294967295L);
                iArr[i23] = (int) j22;
                j10 = j22 >> 32;
            }
            return;
        }
        int i25 = i21;
        long j23 = 0;
        long j24 = 0;
        int i26 = 0;
        int i27 = 0;
        while (i25 <= i10) {
            int i28 = i25 - i21;
            int i29 = iArr5[i28];
            int i30 = -i22;
            int i31 = i21;
            long j25 = (j23 + (iArr[i25] & 4294967295L)) - (((i29 << i22) | (i12 >>> i30)) & 4294967295L);
            int i32 = iArr2[i28];
            long j26 = (j24 + (iArr3[i25] & 4294967295L)) - (((i32 << i22) | (i26 >>> i30)) & 4294967295L);
            iArr3[i25] = (int) j26;
            j24 = j26 >> 32;
            int i33 = iArr3[i28];
            long j27 = j25 - (((i27 >>> i30) | (i33 << i22)) & 4294967295L);
            iArr[i25] = (int) j27;
            j23 = j27 >> 32;
            i25++;
            iArr5 = iArr4;
            i27 = i33;
            i26 = i32;
            i12 = i29;
            i21 = i31;
        }
    }

    public static void g(int i10, int i11, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i12 = i10;
        int i13 = i11 >>> 5;
        int i14 = i11 & 31;
        long j10 = 0;
        if (i14 == 0) {
            long j11 = 0;
            for (int i15 = i13; i15 <= i12; i15++) {
                int i16 = i15 - i13;
                long j12 = (j10 + (iArr[i15] & 4294967295L)) - (iArr3[i16] & 4294967295L);
                long j13 = (j11 + (iArr2[i15] & 4294967295L)) - (iArr4[i16] & 4294967295L);
                iArr[i15] = (int) j12;
                j10 = j12 >> 32;
                iArr2[i15] = (int) j13;
                j11 = j13 >> 32;
            }
            return;
        }
        int i17 = i13;
        int i18 = 0;
        int i19 = 0;
        long j14 = 0;
        while (i17 <= i12) {
            int i20 = i17 - i13;
            int i21 = iArr3[i20];
            int i22 = iArr4[i20];
            long j15 = j10 + (iArr[i17] & 4294967295L);
            long j16 = j15 - (((i18 >>> (-i14)) | (i21 << i14)) & 4294967295L);
            long j17 = (j14 + (iArr2[i17] & 4294967295L)) - (((i19 >>> r3) | (i22 << i14)) & 4294967295L);
            iArr[i17] = (int) j16;
            j10 = j16 >> 32;
            iArr2[i17] = (int) j17;
            j14 = j17 >> 32;
            i17++;
            i19 = i22;
            i18 = i21;
            i13 = i13;
            i12 = i10;
        }
    }
}
