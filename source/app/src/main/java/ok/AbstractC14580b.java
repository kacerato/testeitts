package ok;

import sk.AbstractC15317c;

public abstract class AbstractC14580b {

    public static final int f99076a = 10;

    public static final int f99077b = 16777215;

    public static final int f99078c = 33554431;

    public static final int f99079d = 67108863;

    public static final int[] f99080e = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    public static final int[] f99081f = {-32595792, -7943725, 4688975, 3500415, 6194736, 33281959, -12573105, -1002827, 163343, 5703241};

    public static void A(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    public static void B(int[] iArr, int[] iArr2) {
        int[] k10 = k();
        int[] iArr3 = new int[8];
        j(iArr, 0, k10, 0);
        K(k10);
        x(k10, iArr3, 0);
        AbstractC15317c.o(f99080e, iArr3, iArr3);
        q(iArr3, 0, iArr2);
    }

    public static void C(int[] iArr, int[] iArr2) {
        int[] k10 = k();
        int[] iArr3 = new int[8];
        j(iArr, 0, k10, 0);
        K(k10);
        x(k10, iArr3, 0);
        AbstractC15317c.p(f99080e, iArr3, iArr3);
        q(iArr3, 0, iArr2);
    }

    public static int D(int[] iArr) {
        int i10 = iArr[0] ^ 1;
        for (int i11 = 1; i11 < 10; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean E(int[] iArr) {
        return D(iArr) != 0;
    }

    public static int F(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 10; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean G(int[] iArr) {
        return F(iArr) != 0;
    }

    public static void H(int[] iArr, int i10, int[] iArr2) {
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = iArr[9];
        long j10 = i10;
        long j11 = i13 * j10;
        int i21 = ((int) j11) & f99078c;
        long j12 = i15 * j10;
        int i22 = ((int) j12) & f99078c;
        long j13 = i18 * j10;
        int i23 = ((int) j13) & f99078c;
        long j14 = i20 * j10;
        int i24 = ((int) j14) & f99078c;
        long j15 = ((j14 >> 25) * 38) + (i11 * j10);
        iArr2[0] = ((int) j15) & 67108863;
        long j16 = (j12 >> 25) + (i16 * j10);
        iArr2[5] = ((int) j16) & 67108863;
        long j17 = (j15 >> 26) + (i12 * j10);
        iArr2[1] = ((int) j17) & 67108863;
        long j18 = (j11 >> 25) + (i14 * j10);
        iArr2[3] = ((int) j18) & 67108863;
        long j19 = (j16 >> 26) + (i17 * j10);
        iArr2[6] = ((int) j19) & 67108863;
        long j20 = (j13 >> 25) + (i19 * j10);
        iArr2[8] = ((int) j20) & 67108863;
        iArr2[2] = i21 + ((int) (j17 >> 26));
        iArr2[4] = i22 + ((int) (j18 >> 26));
        iArr2[7] = i23 + ((int) (j19 >> 26));
        iArr2[9] = i24 + ((int) (j20 >> 26));
    }

    public static void I(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = iArr[0];
        int i11 = iArr2[0];
        int i12 = iArr[1];
        int i13 = iArr2[1];
        int i14 = iArr[2];
        int i15 = iArr2[2];
        int i16 = iArr[3];
        int i17 = iArr2[3];
        int i18 = iArr[4];
        int i19 = iArr2[4];
        int i20 = iArr[5];
        int i21 = iArr2[5];
        int i22 = iArr[6];
        int i23 = iArr2[6];
        int i24 = iArr[7];
        int i25 = iArr2[7];
        int i26 = iArr[8];
        int i27 = iArr2[8];
        int i28 = iArr[9];
        int i29 = iArr2[9];
        long j10 = i10;
        long j11 = i11;
        long j12 = j10 * j11;
        long j13 = i13;
        long j14 = i12;
        long j15 = (j10 * j13) + (j14 * j11);
        long j16 = i15;
        long j17 = i14;
        long j18 = (j10 * j16) + (j14 * j13) + (j17 * j11);
        long j19 = ((j14 * j16) + (j17 * j13)) << 1;
        long j20 = i17;
        long j21 = j10 * j20;
        long j22 = i16;
        long j23 = j19 + j21 + (j22 * j11);
        long j24 = (j17 * j16) << 1;
        long j25 = i19;
        long j26 = (j10 * j25) + (j14 * j20) + (j22 * j13);
        long j27 = i18;
        long j28 = j24 + j26 + (j11 * j27);
        long j29 = ((((j14 * j25) + (j17 * j20)) + (j22 * j16)) + (j27 * j13)) << 1;
        long j30 = (((j17 * j25) + (j27 * j16)) << 1) + (j22 * j20);
        long j31 = (j22 * j25) + (j27 * j20);
        long j32 = (j27 * j25) << 1;
        long j33 = i20;
        long j34 = i21;
        long j35 = j33 * j34;
        long j36 = i23;
        long j37 = i22;
        long j38 = (j33 * j36) + (j37 * j34);
        long j39 = i25;
        long j40 = i24;
        long j41 = (j33 * j39) + (j37 * j36) + (j40 * j34);
        long j42 = i27;
        long j43 = i26;
        long j44 = (((j37 * j39) + (j40 * j36)) << 1) + (j33 * j42) + (j43 * j34);
        long j45 = (j40 * j39) << 1;
        long j46 = i29;
        long j47 = (j33 * j46) + (j37 * j42) + (j43 * j36);
        long j48 = i28;
        long j49 = j45 + j47 + (j34 * j48);
        long j50 = j12 - (((((j37 * j46) + (j40 * j42)) + (j43 * j39)) + (j48 * j36)) * 76);
        long j51 = j15 - (((((j40 * j46) + (j48 * j39)) << 1) + (j43 * j42)) * 38);
        long j52 = j18 - (((j43 * j46) + (j42 * j48)) * 38);
        long j53 = j23 - ((j48 * j46) * 76);
        long j54 = j29 - j35;
        long j55 = j30 - j38;
        long j56 = j31 - j41;
        long j57 = j32 - j44;
        int i30 = i10 + i20;
        int i31 = i12 + i22;
        int i32 = i14 + i24;
        int i33 = i15 + i25;
        int i34 = i16 + i26;
        int i35 = i18 + i28;
        long j58 = i30;
        long j59 = i11 + i21;
        long j60 = i13 + i23;
        long j61 = i31;
        long j62 = (j58 * j60) + (j61 * j59);
        long j63 = i33;
        long j64 = i32;
        long j65 = (j58 * j63) + (j61 * j60) + (j64 * j59);
        long j66 = ((j61 * j63) + (j64 * j60)) << 1;
        long j67 = i17 + i27;
        long j68 = i34;
        long j69 = i19 + i29;
        long j70 = i35;
        long j71 = ((((j61 * j69) + (j64 * j67)) + (j68 * j63)) + (j70 * j60)) << 1;
        long j72 = (((j64 * j69) + (j70 * j63)) << 1) + (j68 * j67);
        long j73 = j57 + ((j66 + ((j58 * j67) + (j68 * j59))) - j53);
        int i36 = ((int) j73) & 67108863;
        long j74 = (j73 >> 26) + (((((j64 * j63) << 1) + ((((j58 * j69) + (j61 * j67)) + (j68 * j60)) + (j59 * j70))) - j28) - j49);
        int i37 = ((int) j74) & f99078c;
        long j75 = j50 + ((((j74 >> 25) + j71) - j54) * 38);
        iArr3[0] = ((int) j75) & 67108863;
        long j76 = (j75 >> 26) + j51 + ((j72 - j55) * 38);
        iArr3[1] = ((int) j76) & 67108863;
        long j77 = (j76 >> 26) + j52 + ((((j68 * j69) + (j70 * j67)) - j56) * 38);
        iArr3[2] = ((int) j77) & f99078c;
        long j78 = (j77 >> 25) + j53 + ((((j70 * j69) << 1) - j57) * 38);
        iArr3[3] = ((int) j78) & 67108863;
        long j79 = (j78 >> 26) + j28 + (j49 * 38);
        iArr3[4] = ((int) j79) & f99078c;
        long j80 = (j79 >> 25) + j54 + ((j58 * j59) - j50);
        iArr3[5] = ((int) j80) & 67108863;
        long j81 = (j80 >> 26) + j55 + (j62 - j51);
        iArr3[6] = ((int) j81) & 67108863;
        long j82 = (j81 >> 26) + j56 + (j65 - j52);
        iArr3[7] = ((int) j82) & f99078c;
        long j83 = (j82 >> 25) + i36;
        iArr3[8] = ((int) j83) & 67108863;
        iArr3[9] = i37 + ((int) (j83 >> 26));
    }

    public static void J(int[] iArr, int[] iArr2) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr2[i10] = -iArr[i10];
        }
    }

    public static void K(int[] iArr) {
        int i10 = (iArr[9] >>> 23) & 1;
        N(iArr, i10);
        N(iArr, -i10);
    }

    public static void L(int[] iArr) {
        iArr[0] = 1;
        for (int i10 = 1; i10 < 10; i10++) {
            iArr[i10] = 0;
        }
    }

    public static void M(int[] iArr, int[] iArr2, int[] iArr3) {
        P(iArr, iArr2);
        I(iArr, iArr2, iArr2);
        int[] k10 = k();
        P(iArr2, k10);
        I(iArr, k10, k10);
        O(k10, 2, k10);
        I(iArr2, k10, k10);
        int[] k11 = k();
        O(k10, 5, k11);
        I(k10, k11, k11);
        int[] k12 = k();
        O(k11, 5, k12);
        I(k10, k12, k12);
        O(k12, 10, k10);
        I(k11, k10, k10);
        O(k10, 25, k11);
        I(k10, k11, k11);
        O(k11, 25, k12);
        I(k10, k12, k12);
        O(k12, 50, k10);
        I(k11, k10, k10);
        O(k10, 125, k11);
        I(k10, k11, k11);
        O(k11, 2, k10);
        I(k10, iArr, iArr3);
    }

    public static void N(int[] iArr, int i10) {
        int i11 = iArr[9];
        long j10 = (((i11 >> 24) + i10) * 19) + iArr[0];
        iArr[0] = ((int) j10) & 67108863;
        long j11 = (j10 >> 26) + iArr[1];
        iArr[1] = ((int) j11) & 67108863;
        long j12 = (j11 >> 26) + iArr[2];
        iArr[2] = ((int) j12) & f99078c;
        long j13 = (j12 >> 25) + iArr[3];
        iArr[3] = ((int) j13) & 67108863;
        long j14 = (j13 >> 26) + iArr[4];
        iArr[4] = ((int) j14) & f99078c;
        long j15 = (j14 >> 25) + iArr[5];
        iArr[5] = ((int) j15) & 67108863;
        long j16 = (j15 >> 26) + iArr[6];
        iArr[6] = ((int) j16) & 67108863;
        long j17 = (j16 >> 26) + iArr[7];
        iArr[7] = 33554431 & ((int) j17);
        long j18 = (j17 >> 25) + iArr[8];
        iArr[8] = 67108863 & ((int) j18);
        iArr[9] = (16777215 & i11) + ((int) (j18 >> 26));
    }

    public static void O(int[] iArr, int i10, int[] iArr2) {
        P(iArr, iArr2);
        while (true) {
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                P(iArr2, iArr2);
            }
        }
    }

    public static void P(int[] iArr, int[] iArr2) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = iArr[7];
        int i18 = iArr[8];
        int i19 = iArr[9];
        long j10 = i10;
        long j11 = j10 * j10;
        long j12 = i11 * 2;
        long j13 = j10 * j12;
        long j14 = i12 * 2;
        long j15 = i11;
        long j16 = (j10 * j14) + (j15 * j15);
        long j17 = i13 * 2;
        long j18 = (j12 * j14) + (j10 * j17);
        long j19 = i14 * 2;
        long j20 = (i12 * j14) + (j10 * j19) + (j15 * j17);
        long j21 = (j12 * j19) + (j17 * j14);
        long j22 = i13;
        long j23 = (j14 * j19) + (j22 * j22);
        long j24 = j22 * j19;
        long j25 = i14 * j19;
        int i20 = i19 * 2;
        long j26 = i15;
        long j27 = j26 * j26;
        long j28 = i16 * 2;
        long j29 = j26 * j28;
        long j30 = i17 * 2;
        long j31 = i16;
        long j32 = (j26 * j30) + (j31 * j31);
        long j33 = i18 * 2;
        long j34 = (j28 * j30) + (j26 * j33);
        long j35 = i20;
        long j36 = (i17 * j30) + (j26 * j35) + (j31 * j33);
        long j37 = i18;
        long j38 = j11 - (((j28 * j35) + (j33 * j30)) * 38);
        long j39 = j13 - (((j30 * j35) + (j37 * j37)) * 38);
        long j40 = j16 - ((j37 * j35) * 38);
        long j41 = j18 - ((i19 * j35) * 38);
        long j42 = j21 - j27;
        long j43 = j23 - j29;
        long j44 = j24 - j32;
        long j45 = j25 - j34;
        int i21 = i11 + i16;
        int i22 = i12 + i17;
        int i23 = i13 + i18;
        int i24 = i14 + i19;
        long j46 = i10 + i15;
        long j47 = j46 * j46;
        long j48 = i21 * 2;
        long j49 = j46 * j48;
        long j50 = i22 * 2;
        long j51 = i21;
        long j52 = (j46 * j50) + (j51 * j51);
        long j53 = i23 * 2;
        long j54 = (j48 * j50) + (j46 * j53);
        long j55 = i24 * 2;
        long j56 = (i22 * j50) + (j46 * j55) + (j51 * j53);
        long j57 = (j48 * j55) + (j53 * j50);
        long j58 = i23;
        long j59 = (j50 * j55) + (j58 * j58);
        long j60 = j58 * j55;
        long j61 = i24 * j55;
        long j62 = j45 + (j54 - j41);
        int i25 = ((int) j62) & 67108863;
        long j63 = (j62 >> 26) + ((j56 - j20) - j36);
        int i26 = ((int) j63) & f99078c;
        long j64 = j38 + ((((j63 >> 25) + j57) - j42) * 38);
        iArr2[0] = ((int) j64) & 67108863;
        long j65 = (j64 >> 26) + j39 + ((j59 - j43) * 38);
        iArr2[1] = ((int) j65) & 67108863;
        long j66 = (j65 >> 26) + j40 + ((j60 - j44) * 38);
        iArr2[2] = ((int) j66) & f99078c;
        long j67 = (j66 >> 25) + j41 + ((j61 - j45) * 38);
        iArr2[3] = ((int) j67) & 67108863;
        long j68 = (j67 >> 26) + j20 + (38 * j36);
        iArr2[4] = ((int) j68) & f99078c;
        long j69 = (j68 >> 25) + j42 + (j47 - j38);
        iArr2[5] = ((int) j69) & 67108863;
        long j70 = (j69 >> 26) + j43 + (j49 - j39);
        iArr2[6] = ((int) j70) & 67108863;
        long j71 = (j70 >> 26) + j44 + (j52 - j40);
        iArr2[7] = ((int) j71) & f99078c;
        long j72 = (j71 >> 25) + i25;
        iArr2[8] = ((int) j72) & 67108863;
        iArr2[9] = i26 + ((int) (j72 >> 26));
    }

    public static boolean Q(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] k10 = k();
        int[] k11 = k();
        I(iArr, iArr2, k10);
        P(iArr2, k11);
        I(k10, k11, k10);
        P(k11, k11);
        I(k11, k10, k11);
        int[] k12 = k();
        int[] k13 = k();
        M(k11, k12, k13);
        I(k13, k10, k13);
        int[] k14 = k();
        P(k13, k14);
        I(k14, iArr2, k14);
        R(k14, iArr, k12);
        K(k12);
        if (G(k12)) {
            j(k13, 0, iArr3, 0);
            return true;
        }
        a(k14, iArr, k12);
        K(k12);
        if (!G(k12)) {
            return false;
        }
        I(k13, f99081f, iArr3);
        return true;
    }

    public static void R(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr3[i10] = iArr[i10] - iArr2[i10];
        }
    }

    public static void S(int[] iArr) {
        iArr[0] = iArr[0] - 1;
    }

    public static void T(int[] iArr) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr[i10] = 0;
        }
    }

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr3[i10] = iArr[i10] + iArr2[i10];
        }
    }

    public static void b(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void c(int[] iArr, int i10) {
        iArr[i10] = iArr[i10] + 1;
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i10 = 0; i10 < 10; i10++) {
            int i11 = iArr[i10];
            int i12 = iArr2[i10];
            iArr3[i10] = i11 + i12;
            iArr4[i10] = i11 - i12;
        }
    }

    public static int e(int[] iArr, int[] iArr2) {
        int i10 = 0;
        for (int i11 = 0; i11 < 10; i11++) {
            i10 |= iArr[i11] ^ iArr2[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean f(int[] iArr, int[] iArr2) {
        return e(iArr, iArr2) != 0;
    }

    public static void g(int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = iArr[7];
        int i18 = iArr[8];
        int i19 = i12 + (i11 >> 26);
        int i20 = i14 + (i13 >> 26);
        int i21 = i17 + (i16 >> 26);
        int i22 = iArr[9] + (i18 >> 26);
        int i23 = (i13 & 67108863) + (i19 >> 25);
        int i24 = i19 & f99078c;
        int i25 = i15 + (i20 >> 25);
        int i26 = i20 & f99078c;
        int i27 = (i18 & 67108863) + (i21 >> 25);
        int i28 = i10 + ((i22 >> 25) * 38);
        int i29 = (i11 & 67108863) + (i28 >> 26);
        int i30 = (i16 & 67108863) + (i25 >> 26);
        int i31 = (i21 & f99078c) + (i30 >> 26);
        int i32 = (i22 & f99078c) + (i27 >> 26);
        iArr[0] = i28 & 67108863;
        iArr[1] = i29 & 67108863;
        iArr[2] = i24 + (i29 >> 26);
        iArr[3] = i23 & 67108863;
        iArr[4] = i26 + (i23 >> 26);
        iArr[5] = i25 & 67108863;
        iArr[6] = i30 & 67108863;
        iArr[7] = i31;
        iArr[8] = i27 & 67108863;
        iArr[9] = i32;
    }

    public static void h(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        for (int i13 = 0; i13 < 10; i13++) {
            int i14 = i12 + i13;
            int i15 = iArr2[i14];
            iArr2[i14] = i15 ^ ((iArr[i11 + i13] ^ i15) & i10);
        }
    }

    public static void i(int i10, int[] iArr) {
        int i11 = 0 - i10;
        for (int i12 = 0; i12 < 10; i12++) {
            iArr[i12] = (iArr[i12] ^ i11) - i11;
        }
    }

    public static void j(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 10; i12++) {
            iArr2[i11 + i12] = iArr[i10 + i12];
        }
    }

    public static int[] k() {
        return new int[10];
    }

    public static int[] l(int i10) {
        return new int[i10 * 10];
    }

    public static void m(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0 - i10;
        for (int i12 = 0; i12 < 10; i12++) {
            int i13 = iArr[i12];
            int i14 = iArr2[i12];
            int i15 = (i13 ^ i14) & i11;
            iArr[i12] = i13 ^ i15;
            iArr2[i12] = i14 ^ i15;
        }
    }

    public static void n(byte[] bArr, int i10, int[] iArr) {
        r(bArr, i10, iArr, 0);
        r(bArr, i10 + 16, iArr, 5);
        iArr[9] = iArr[9] & 16777215;
    }

    public static void o(byte[] bArr, int i10, int[] iArr, int i11) {
        r(bArr, i10, iArr, i11);
        r(bArr, i10 + 16, iArr, i11 + 5);
        int i12 = i11 + 9;
        iArr[i12] = iArr[i12] & 16777215;
    }

    public static void p(byte[] bArr, int[] iArr) {
        r(bArr, 0, iArr, 0);
        r(bArr, 16, iArr, 5);
        iArr[9] = iArr[9] & 16777215;
    }

    public static void q(int[] iArr, int i10, int[] iArr2) {
        s(iArr, i10, iArr2, 0);
        s(iArr, i10 + 4, iArr2, 5);
        iArr2[9] = iArr2[9] & 16777215;
    }

    public static void r(byte[] bArr, int i10, int[] iArr, int i11) {
        int t10 = t(bArr, i10);
        int t11 = t(bArr, i10 + 4);
        int t12 = t(bArr, i10 + 8);
        int t13 = t(bArr, i10 + 12);
        iArr[i11] = t10 & 67108863;
        iArr[i11 + 1] = ((t10 >>> 26) | (t11 << 6)) & 67108863;
        iArr[i11 + 2] = ((t11 >>> 20) | (t12 << 12)) & f99078c;
        iArr[i11 + 3] = 67108863 & ((t13 << 19) | (t12 >>> 13));
        iArr[i11 + 4] = t13 >>> 7;
    }

    public static void s(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        iArr2[i11] = i12 & 67108863;
        iArr2[i11 + 1] = ((i12 >>> 26) | (i13 << 6)) & 67108863;
        iArr2[i11 + 2] = ((i13 >>> 20) | (i14 << 12)) & f99078c;
        iArr2[i11 + 3] = 67108863 & ((i15 << 19) | (i14 >>> 13));
        iArr2[i11 + 4] = i15 >>> 7;
    }

    public static int t(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void u(int[] iArr, int i10, byte[] bArr, int i11) {
        y(iArr, i10, bArr, i11);
        y(iArr, i10 + 5, bArr, i11 + 16);
    }

    public static void v(int[] iArr, byte[] bArr) {
        y(iArr, 0, bArr, 0);
        y(iArr, 5, bArr, 16);
    }

    public static void w(int[] iArr, byte[] bArr, int i10) {
        y(iArr, 0, bArr, i10);
        y(iArr, 5, bArr, i10 + 16);
    }

    public static void x(int[] iArr, int[] iArr2, int i10) {
        z(iArr, 0, iArr2, i10);
        z(iArr, 5, iArr2, i10 + 4);
    }

    public static void y(int[] iArr, int i10, byte[] bArr, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        int i16 = iArr[i10 + 4];
        A((i13 << 26) | i12, bArr, i11);
        A((i13 >>> 6) | (i14 << 20), bArr, i11 + 4);
        A((i14 >>> 12) | (i15 << 13), bArr, i11 + 8);
        A((i16 << 7) | (i15 >>> 19), bArr, i11 + 12);
    }

    public static void z(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        int i16 = iArr[i10 + 4];
        iArr2[i11] = (i13 << 26) | i12;
        iArr2[i11 + 1] = (i13 >>> 6) | (i14 << 20);
        iArr2[i11 + 2] = (i14 >>> 12) | (i15 << 13);
        iArr2[i11 + 3] = (i16 << 7) | (i15 >>> 19);
    }
}
