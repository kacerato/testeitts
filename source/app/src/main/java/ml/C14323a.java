package ml;

public class C14323a {

    public static final int f97459h = 64;

    public static int f97460i = 16;

    public final int f97461a;

    public final int f97462b;

    public final int f97463c;

    public final int f97464d;

    public final int f97465e;

    public final C14324b f97466f;

    public final l f97467g;

    public C14323a(C14324b c14324b) {
        this.f97466f = c14324b;
        this.f97465e = c14324b.k();
        int m10 = c14324b.m();
        this.f97464d = m10;
        this.f97461a = m10 << 1;
        this.f97462b = m10 >> 2;
        this.f97463c = (r0 * 2) - 1;
        this.f97467g = c14324b.t();
    }

    public void a(short[][][] sArr, byte[] bArr) {
        int q10 = this.f97465e * this.f97466f.q();
        byte[] bArr2 = new byte[q10];
        C14324b c14324b = this.f97466f;
        c14324b.f97496w.c(bArr2, bArr, c14324b.r(), q10);
        for (int i10 = 0; i10 < this.f97465e; i10++) {
            this.f97467g.c(bArr2, this.f97466f.q() * i10, sArr[i10]);
        }
    }

    public void b(short[][] sArr, byte[] bArr) {
        int p10 = this.f97465e * this.f97466f.p();
        byte[] bArr2 = new byte[p10];
        C14324b c14324b = this.f97466f;
        c14324b.f97496w.c(bArr2, bArr, c14324b.n(), p10);
        for (int i10 = 0; i10 < this.f97465e; i10++) {
            C14324b c14324b2 = this.f97466f;
            if (c14324b2.f97495v) {
                for (int i11 = 0; i11 < this.f97464d / 4; i11++) {
                    int i12 = i11 * 4;
                    sArr[i10][i12] = (short) (((bArr2[(this.f97466f.p() * i10) + i11] & 3) ^ 2) - 2);
                    sArr[i10][i12 + 1] = (short) ((((bArr2[(this.f97466f.p() * i10) + i11] >>> 2) & 3) ^ 2) - 2);
                    sArr[i10][i12 + 2] = (short) ((((bArr2[(this.f97466f.p() * i10) + i11] >>> 4) & 3) ^ 2) - 2);
                    sArr[i10][i12 + 3] = (short) ((((bArr2[(this.f97466f.p() * i10) + i11] >>> 6) & 3) ^ 2) - 2);
                }
            } else {
                f(sArr[i10], bArr2, c14324b2.p() * i10);
            }
        }
    }

    public void c(short[][] sArr, short[][] sArr2, short[] sArr3) {
        for (int i10 = 0; i10 < this.f97465e; i10++) {
            i(sArr[i10], sArr2[i10], sArr3);
        }
    }

    public void d(short[][][] sArr, short[][] sArr2, short[][] sArr3, int i10) {
        for (int i11 = 0; i11 < this.f97465e; i11++) {
            for (int i12 = 0; i12 < this.f97465e; i12++) {
                if (i10 == 1) {
                    i(sArr[i12][i11], sArr2[i12], sArr3[i11]);
                } else {
                    i(sArr[i11][i12], sArr2[i12], sArr3[i11]);
                }
            }
        }
    }

    public final short e(int i10, int i11) {
        return (short) (i10 * i11);
    }

    public final void f(short[] sArr, byte[] bArr, int i10) {
        int[] iArr = new int[4];
        if (this.f97466f.l() == 6) {
            for (int i11 = 0; i11 < this.f97464d / 4; i11++) {
                int h10 = (int) h(bArr, i10 + (i11 * 3), 3);
                int i12 = 0;
                for (int i13 = 0; i13 < 3; i13++) {
                    i12 += (h10 >> i13) & 2396745;
                }
                iArr[0] = i12 & 7;
                iArr[1] = (i12 >>> 6) & 7;
                iArr[2] = (i12 >>> 12) & 7;
                iArr[3] = (i12 >>> 18) & 7;
                int i14 = i11 * 4;
                sArr[i14] = (short) (iArr[0] - ((i12 >>> 3) & 7));
                sArr[i14 + 1] = (short) (iArr[1] - ((i12 >>> 9) & 7));
                sArr[i14 + 2] = (short) (iArr[2] - ((i12 >>> 15) & 7));
                sArr[i14 + 3] = (short) (iArr[3] - (i12 >>> 21));
            }
            return;
        }
        char c10 = 15;
        if (this.f97466f.l() == 8) {
            for (int i15 = 0; i15 < this.f97464d / 4; i15++) {
                int i16 = i15 * 4;
                int h11 = (int) h(bArr, i10 + i16, 4);
                int i17 = 0;
                for (int i18 = 0; i18 < 4; i18++) {
                    i17 += (h11 >>> i18) & 286331153;
                }
                iArr[0] = i17 & 15;
                iArr[1] = (i17 >>> 8) & 15;
                iArr[2] = (i17 >>> 16) & 15;
                iArr[3] = (i17 >>> 24) & 15;
                sArr[i16] = (short) (iArr[0] - ((i17 >>> 4) & 15));
                sArr[i16 + 1] = (short) (iArr[1] - ((i17 >>> 12) & 15));
                sArr[i16 + 2] = (short) (iArr[2] - ((i17 >>> 20) & 15));
                sArr[i16 + 3] = (short) (iArr[3] - (i17 >>> 28));
            }
            return;
        }
        if (this.f97466f.l() == 10) {
            int i19 = 0;
            while (i19 < this.f97464d / 4) {
                long h12 = h(bArr, i10 + (i19 * 5), 5);
                long j10 = 0;
                for (int i20 = 0; i20 < 5; i20++) {
                    j10 += (h12 >>> i20) & 35468117025L;
                }
                iArr[0] = (int) (j10 & 31);
                iArr[1] = (int) ((j10 >>> 10) & 31);
                iArr[2] = (int) ((j10 >>> 20) & 31);
                iArr[3] = (int) ((j10 >>> 30) & 31);
                int i21 = i19 * 4;
                sArr[i21] = (short) (iArr[0] - ((int) ((j10 >>> 5) & 31)));
                sArr[i21 + 1] = (short) (iArr[1] - ((int) ((j10 >>> c10) & 31)));
                sArr[i21 + 2] = (short) (iArr[2] - ((int) ((j10 >>> 25) & 31)));
                sArr[i21 + 3] = (short) (iArr[3] - ((int) (j10 >>> 35)));
                i19++;
                c10 = 15;
            }
        }
    }

    public final void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = 31;
        int[] iArr4 = new int[31];
        int[] iArr5 = new int[31];
        int[] iArr6 = new int[31];
        int[] iArr7 = new int[63];
        int i11 = 0;
        while (true) {
            if (i11 >= 16) {
                break;
            }
            int i12 = iArr[i11];
            int i13 = iArr[i11 + 16];
            int i14 = iArr[i11 + 32];
            int i15 = iArr[i11 + 48];
            int i16 = 0;
            for (int i17 = 16; i16 < i17; i17 = 16) {
                int i18 = iArr2[i16];
                int i19 = iArr2[i16 + 16];
                int i20 = i11 + i16;
                iArr3[i20] = iArr3[i20] + e(i12, i18);
                int i21 = i20 + 32;
                iArr3[i21] = iArr3[i21] + e(i13, i19);
                int i22 = i12;
                int[] iArr8 = iArr7;
                iArr4[i20] = (int) (iArr4[i20] + ((i18 + i19) * (i12 + i13)));
                int i23 = iArr2[i16 + 32];
                int i24 = iArr2[i16 + 48];
                int i25 = i20 + 64;
                iArr3[i25] = iArr3[i25] + e(i23, i14);
                int i26 = i20 + 96;
                iArr3[i26] = iArr3[i26] + e(i24, i15);
                iArr6[i20] = iArr6[i20] + e(i14 + i15, i23 + i24);
                int i27 = i18 + i23;
                int i28 = i22 + i14;
                iArr8[i20] = iArr8[i20] + e(i27, i28);
                int i29 = i19 + i24;
                int i30 = i13 + i15;
                iArr8[i21] = iArr8[i21] + e(i29, i30);
                iArr5[i20] = iArr5[i20] + e(i27 + i29, i28 + i30);
                i16++;
                i12 = i22;
                i11 = i11;
                iArr7 = iArr8;
            }
            i11++;
            i10 = 31;
        }
        int[] iArr9 = iArr7;
        int i31 = 0;
        while (i31 < i10) {
            int i32 = i31 + 32;
            iArr5[i31] = (iArr5[i31] - iArr9[i31]) - iArr9[i32];
            iArr4[i31] = (iArr4[i31] - iArr3[i31]) - iArr3[i32];
            iArr6[i31] = (iArr6[i31] - iArr3[i31 + 64]) - iArr3[i31 + 96];
            i31++;
            i10 = 31;
        }
        for (int i33 = 0; i33 < i10; i33++) {
            int i34 = i33 + 16;
            iArr9[i34] = iArr9[i34] + iArr5[i33];
            iArr3[i34] = iArr3[i34] + iArr4[i33];
            int i35 = i33 + 80;
            iArr3[i35] = iArr3[i35] + iArr6[i33];
        }
        int i36 = 63;
        int i37 = 0;
        while (i37 < i36) {
            iArr9[i37] = (iArr9[i37] - iArr3[i37]) - iArr3[i37 + 64];
            i37++;
            i36 = 63;
        }
        for (int i38 = 0; i38 < i36; i38++) {
            int i39 = i38 + 32;
            iArr3[i39] = iArr3[i39] + iArr9[i38];
        }
    }

    public final long h(byte[] bArr, int i10, int i11) {
        long j10 = bArr[i10] & 255;
        for (int i12 = 1; i12 < i11; i12++) {
            j10 |= (bArr[i10 + i12] & 255) << (i12 * 8);
        }
        return j10;
    }

    public final void i(short[] sArr, short[] sArr2, short[] sArr3) {
        short[] sArr4 = new short[this.f97464d * 2];
        j(sArr, sArr2, sArr4);
        int i10 = this.f97464d;
        while (true) {
            int i11 = this.f97464d;
            if (i10 >= i11 * 2) {
                return;
            }
            int i12 = i10 - i11;
            sArr3[i12] = (short) (sArr3[i12] + (sArr4[i10 - i11] - sArr4[i10]));
            i10++;
        }
    }

    public final void j(short[] sArr, short[] sArr2, short[] sArr3) {
        int i10 = this.f97462b;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i10];
        int[] iArr4 = new int[i10];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        int[] iArr10 = new int[i10];
        int[] iArr11 = new int[i10];
        int[] iArr12 = new int[i10];
        int[] iArr13 = new int[i10];
        int[] iArr14 = new int[i10];
        int i11 = this.f97463c;
        int[] iArr15 = new int[i11];
        int[] iArr16 = new int[i11];
        int[] iArr17 = new int[i11];
        int[] iArr18 = new int[i11];
        int[] iArr19 = new int[i11];
        int[] iArr20 = new int[i11];
        int[] iArr21 = new int[i11];
        int i12 = 0;
        while (true) {
            int i13 = this.f97462b;
            if (i12 >= i13) {
                break;
            }
            short s10 = sArr[i12];
            short s11 = sArr[i12 + i13];
            short s12 = sArr[i12 + (i13 * 2)];
            short s13 = sArr[(i13 * 3) + i12];
            int[] iArr22 = iArr14;
            short s14 = (short) (s10 + s12);
            int[] iArr23 = iArr9;
            short s15 = (short) (s11 + s13);
            iArr3[i12] = (short) (s14 + s15);
            iArr4[i12] = (short) (s14 - s15);
            short s16 = (short) (((s10 << 2) + s12) << 1);
            short s17 = (short) ((s11 << 2) + s13);
            iArr5[i12] = (short) (s16 + s17);
            iArr6[i12] = (short) (s16 - s17);
            iArr2[i12] = (short) ((s13 << 3) + (s12 << 2) + (s11 << 1) + s10);
            iArr7[i12] = s10;
            iArr[i12] = s13;
            i12++;
            iArr14 = iArr22;
            iArr9 = iArr23;
            iArr13 = iArr13;
        }
        int[] iArr24 = iArr14;
        int[] iArr25 = iArr9;
        int[] iArr26 = iArr13;
        int i14 = 0;
        while (true) {
            int i15 = this.f97462b;
            if (i14 >= i15) {
                break;
            }
            short s18 = sArr2[i14];
            short s19 = sArr2[i14 + i15];
            short s20 = sArr2[(i15 * 2) + i14];
            short s21 = sArr2[(i15 * 3) + i14];
            int i16 = s18 + s20;
            int i17 = s19 + s21;
            iArr10[i14] = i16 + i17;
            iArr11[i14] = i16 - i17;
            int i18 = ((s18 << 2) + s20) << 1;
            int i19 = (s19 << 2) + s21;
            iArr12[i14] = i18 + i19;
            iArr26[i14] = i18 - i19;
            iArr25[i14] = (s21 << 3) + (s20 << 2) + (s19 << 1) + s18;
            iArr24[i14] = s18;
            iArr8[i14] = s21;
            i14++;
        }
        g(iArr, iArr8, iArr15);
        g(iArr2, iArr25, iArr16);
        g(iArr3, iArr10, iArr17);
        g(iArr4, iArr11, iArr18);
        g(iArr5, iArr12, iArr19);
        g(iArr6, iArr26, iArr20);
        g(iArr7, iArr24, iArr21);
        for (int i20 = 0; i20 < this.f97463c; i20++) {
            int i21 = iArr15[i20];
            int i22 = iArr16[i20];
            int i23 = iArr17[i20];
            int i24 = iArr18[i20];
            int i25 = iArr19[i20];
            int i26 = iArr20[i20];
            int i27 = iArr21[i20];
            int i28 = i26 - i25;
            int i29 = ((i24 & 65535) - (i23 & 65535)) >>> 1;
            int i30 = i23 + i29;
            int i31 = ((i22 + i25) - (i30 << 6)) - i30;
            int i32 = (i30 - i27) - i21;
            int i33 = i31 + (i32 * 45);
            int i34 = (((((((i25 - i21) - (i27 << 6)) << 1) + i28) & 65535) - (i32 << 3)) * 43691) >> 3;
            int i35 = i28 + i33;
            int i36 = (((i33 & 65535) + ((i29 & 65535) << 4)) * 36409) >> 1;
            int i37 = -(i29 + i36);
            int i38 = ((((i36 & 65535) * 30) - (i35 & 65535)) * 61167) >> 2;
            int i39 = i32 - i34;
            int i40 = i36 - i38;
            sArr3[i20] = (short) (sArr3[i20] + (i27 & 65535));
            int i41 = i20 + 64;
            sArr3[i41] = (short) (sArr3[i41] + (i38 & 65535));
            int i42 = i20 + 128;
            sArr3[i42] = (short) (sArr3[i42] + (i34 & 65535));
            int i43 = i20 + 192;
            sArr3[i43] = (short) (sArr3[i43] + (i37 & 65535));
            int i44 = i20 + 256;
            sArr3[i44] = (short) (sArr3[i44] + (i39 & 65535));
            int i45 = i20 + 320;
            sArr3[i45] = (short) (sArr3[i45] + (i40 & 65535));
            int i46 = i20 + 384;
            sArr3[i46] = (short) (sArr3[i46] + (i21 & 65535));
        }
    }
}
