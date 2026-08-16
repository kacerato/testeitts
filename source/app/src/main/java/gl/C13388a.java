package gl;

public class C13388a {
    public static void a(int[] iArr, int i10) {
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i11 >= i12) {
                return;
            }
            iArr[i11] = 1 << (i12 - i11);
            i11++;
        }
    }

    public static void b(int[] iArr, int[] iArr2, int i10, int i11, int i12, int[] iArr3, int i13, int i14) {
        int i15 = 1;
        int i16 = 1 << (i13 - 2);
        int i17 = i14 - 2;
        int i18 = 1 << i17;
        int[] iArr4 = new int[i16];
        int[] iArr5 = new int[i16];
        int[] iArr6 = new int[i17];
        int[] iArr7 = new int[i17];
        int[] iArr8 = new int[i18];
        int[] iArr9 = new int[i18];
        int[] iArr10 = new int[i18];
        int[] iArr11 = new int[(i14 - i13) + 1];
        if (i12 == 1) {
            for (int i19 = 0; i19 < i11; i19++) {
                iArr11[i19] = C13390c.c(iArr3[i19], iArr2[1]);
            }
            iArr[0] = iArr2[0];
            for (int i20 = 0; i20 < i11; i20++) {
                for (int i21 = 0; i21 < i15; i21++) {
                    iArr[i15 + i21] = iArr[i21] ^ iArr11[i20];
                }
                i15 <<= 1;
            }
            return;
        }
        int i22 = i11 - 1;
        if (iArr3[i22] != 1) {
            int i23 = 1;
            for (int i24 = 1 << i12; i23 < i24; i24 = i24) {
                i15 = C13390c.c(i15, iArr3[i22]);
                iArr2[i23] = C13390c.c(i15, iArr2[i23]);
                i23++;
            }
        }
        c(iArr4, iArr5, iArr2, i12, i13);
        for (int i25 = 0; i25 < i22; i25++) {
            int c10 = C13390c.c(iArr3[i25], C13390c.a(iArr3[i22]));
            iArr6[i25] = c10;
            iArr7[i25] = C13390c.c(c10, c10) ^ iArr6[i25];
        }
        e(iArr8, iArr6, i22);
        int i26 = i12 - 1;
        b(iArr9, iArr4, (i10 + 1) / 2, i22, i26, iArr7, i13, i14);
        int i27 = 1 << (i22 & 15);
        if (i10 <= 3) {
            iArr[0] = iArr9[0];
            iArr[i27] = iArr9[0] ^ iArr5[0];
            for (int i28 = 1; i28 < i27; i28++) {
                int c11 = iArr9[i28] ^ C13390c.c(iArr8[i28], iArr5[0]);
                iArr[i28] = c11;
                iArr[i27 + i28] = c11 ^ iArr5[0];
            }
            return;
        }
        b(iArr10, iArr5, i10 / 2, i22, i26, iArr7, i13, i14);
        System.arraycopy(iArr10, 0, iArr, i27, i27);
        iArr[0] = iArr9[0];
        iArr[i27] = iArr[i27] ^ iArr9[0];
        for (int i29 = 1; i29 < i27; i29++) {
            int c12 = iArr9[i29] ^ C13390c.c(iArr8[i29], iArr10[i29]);
            iArr[i29] = c12;
            int i30 = i27 + i29;
            iArr[i30] = c12 ^ iArr[i30];
        }
    }

    public static void c(int[] iArr, int[] iArr2, int[] iArr3, int i10, int i11) {
        if (i10 == 1) {
            iArr[0] = iArr3[0];
            iArr2[0] = iArr3[1];
            return;
        }
        if (i10 == 2) {
            iArr[0] = iArr3[0];
            int i12 = iArr3[2];
            int i13 = iArr3[3];
            int i14 = i12 ^ i13;
            iArr[1] = i14;
            iArr2[0] = i14 ^ iArr3[1];
            iArr2[1] = i13;
            return;
        }
        if (i10 == 3) {
            iArr[0] = iArr3[0];
            int i15 = iArr3[4];
            int i16 = iArr3[6];
            iArr[2] = i15 ^ i16;
            int i17 = iArr3[7];
            iArr[3] = i16 ^ i17;
            int i18 = iArr3[3];
            int i19 = iArr3[5];
            int i20 = (i18 ^ i19) ^ i17;
            iArr2[1] = i20;
            iArr2[2] = i19 ^ i16;
            iArr2[3] = i17;
            int i21 = (iArr3[2] ^ iArr[2]) ^ i20;
            iArr[1] = i21;
            iArr2[0] = i21 ^ iArr3[1];
            return;
        }
        if (i10 != 4) {
            d(iArr, iArr2, iArr3, i10, i11);
            return;
        }
        int i22 = iArr3[8];
        int i23 = iArr3[12];
        iArr[4] = i22 ^ i23;
        int i24 = iArr3[14];
        iArr[6] = i23 ^ i24;
        int i25 = iArr3[15];
        iArr[7] = i24 ^ i25;
        int i26 = iArr3[11];
        int i27 = iArr3[13];
        int i28 = i26 ^ i27;
        iArr2[5] = i28;
        iArr2[6] = i27 ^ i24;
        iArr2[7] = i25;
        int i29 = iArr3[10];
        int i30 = (i23 ^ i29) ^ i28;
        iArr[5] = i30;
        int i31 = iArr3[9];
        iArr2[4] = i30 ^ (i31 ^ i27);
        iArr[0] = iArr3[0];
        int i32 = (iArr3[7] ^ i26) ^ i25;
        iArr2[3] = i32;
        int i33 = (i24 ^ (iArr3[6] ^ i29)) ^ i32;
        iArr[3] = i33;
        int i34 = (iArr3[4] ^ iArr[4]) ^ i33;
        int i35 = iArr2[3];
        iArr[2] = i34 ^ i35;
        int i36 = iArr3[3];
        int i37 = (((iArr3[5] ^ i36) ^ i31) ^ i27) ^ i35;
        iArr2[1] = i37;
        iArr2[2] = i33 ^ (i36 ^ i37);
        int i38 = (iArr3[2] ^ iArr[2]) ^ i37;
        iArr[1] = i38;
        iArr2[0] = i38 ^ iArr3[1];
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3, int i10, int i11) {
        int i12 = 1 << (i10 - 2);
        int i13 = 1 << (i11 - 2);
        int i14 = i13 * 2;
        int[] iArr4 = new int[i14];
        int[] iArr5 = new int[i14];
        int[] iArr6 = new int[i13];
        int[] iArr7 = new int[i13];
        int[] iArr8 = new int[i13];
        int[] iArr9 = new int[i13];
        int i15 = i12 * 3;
        int i16 = i12 * 2;
        p.b(iArr3, i15, iArr4, 0, i16);
        p.b(iArr3, i15, iArr4, i12, i16);
        p.b(iArr3, 0, iArr5, 0, i12 * 4);
        for (int i17 = 0; i17 < i12; i17++) {
            int i18 = iArr4[i17] ^ iArr3[i16 + i17];
            iArr4[i17] = i18;
            int i19 = i12 + i17;
            iArr5[i19] = iArr5[i19] ^ i18;
        }
        int i20 = i10 - 1;
        c(iArr6, iArr7, iArr4, i20, i11);
        c(iArr8, iArr9, iArr5, i20, i11);
        p.b(iArr8, 0, iArr, 0, i16);
        p.b(iArr6, 0, iArr, i12, i16);
        p.b(iArr9, 0, iArr2, 0, i16);
        p.b(iArr7, 0, iArr2, i12, i16);
    }

    public static void e(int[] iArr, int[] iArr2, int i10) {
        iArr[0] = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                int i13 = 1 << i11;
                if (i12 < i13) {
                    iArr[i13 + i12] = iArr2[i11] ^ iArr[i12];
                    i12++;
                }
            }
        }
    }

    public static void f(int[] iArr, int[] iArr2, int i10, int i11) {
        int i12 = 1 << i11;
        int[] iArr3 = new int[i12];
        int[] iArr4 = new int[i12];
        int[] iArr5 = new int[7];
        int[] iArr6 = new int[128];
        int[] iArr7 = new int[128];
        int[] iArr8 = new int[7];
        int[] iArr9 = new int[128];
        a(iArr8, 8);
        e(iArr9, iArr8, 7);
        c(iArr3, iArr4, iArr2, i11, i11);
        for (int i13 = 0; i13 < 7; i13++) {
            int i14 = iArr8[i13];
            iArr5[i13] = C13390c.c(i14, i14) ^ iArr8[i13];
        }
        int i15 = i11 - 1;
        b(iArr6, iArr3, (i10 + 1) / 2, 7, i15, iArr5, i11, 8);
        b(iArr7, iArr4, i10 / 2, 7, i15, iArr5, i11, 8);
        System.arraycopy(iArr7, 0, iArr, 128, 128);
        iArr[0] = iArr6[0];
        iArr[128] = iArr[128] ^ iArr6[0];
        for (int i16 = 1; i16 < 128; i16++) {
            int c10 = iArr6[i16] ^ C13390c.c(iArr9[i16], iArr7[i16]);
            iArr[i16] = c10;
            int i17 = 128 + i16;
            iArr[i17] = c10 ^ iArr[i17];
        }
    }

    public static void g(byte[] bArr, int[] iArr, int i10, int[] iArr2) {
        int[] iArr3 = new int[7];
        int[] iArr4 = new int[i10];
        a(iArr3, 8);
        e(iArr4, iArr3, 7);
        byte l10 = (byte) (bArr[0] ^ (p.l((-iArr[0]) >> 15) ^ 1));
        bArr[0] = l10;
        bArr[0] = (byte) (l10 ^ (p.l((-iArr[i10]) >> 15) ^ 1));
        for (int i11 = 1; i11 < i10; i11++) {
            int i12 = 255 - iArr2[iArr4[i11]];
            bArr[i12] = (byte) (bArr[i12] ^ (Math.abs((-iArr[i11]) >> 15) ^ 1));
            int i13 = 255 - iArr2[iArr4[i11] ^ 1];
            bArr[i13] = (byte) (bArr[i13] ^ (Math.abs((-iArr[i10 + i11]) >> 15) ^ 1));
        }
    }
}
