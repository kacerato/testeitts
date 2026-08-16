package al;

import Ii.Q;
import android.util.Half;
import java.lang.reflect.Array;
import java.security.SecureRandom;

public class C3674d {

    public int f32342a;

    public int f32343b;

    public int f32344c;

    public int f32345d;

    public int f32346e;

    public int f32347f;

    public int f32348g;

    public int f32349h;

    public int f32350i;

    public int f32351j;

    public int[] f32352k;

    public final int f32353l;

    public o f32354m;

    public AbstractC3673c f32355n;

    public boolean f32356o;

    public boolean f32357p;

    public boolean f32358q;

    public C3674d(int i10, int i11, int i12, int[] iArr, boolean z10, int i13) {
        AbstractC3673c c3672b;
        this.f32358q = z10;
        this.f32342a = i11;
        this.f32343b = i12;
        this.f32344c = i10;
        this.f32352k = iArr;
        this.f32353l = i13;
        this.f32345d = i12 * 2;
        this.f32346e = (1 << (i10 - 4)) * ((i10 * 2) - 1);
        int i14 = i12 * i10;
        this.f32347f = i14;
        int i15 = i11 - i14;
        this.f32348g = i15;
        this.f32349h = (i15 + 7) / 8;
        this.f32350i = (i14 + 7) / 8;
        this.f32351j = (1 << i10) - 1;
        if (i10 == 12) {
            this.f32354m = new m();
            c3672b = new C3671a(this.f32342a, this.f32343b, this.f32344c);
        } else {
            this.f32354m = new n();
            c3672b = new C3672b(this.f32342a, this.f32343b, this.f32344c);
        }
        this.f32355n = c3672b;
        this.f32356o = this.f32343b % 8 != 0;
        this.f32357p = (1 << this.f32344c) > this.f32342a;
    }

    public static byte C(short s10, short s11) {
        return (byte) ((-(((s10 ^ s11) - 1) >>> 31)) & 255);
    }

    public static long D(short s10, short s11) {
        return -(((s10 ^ s11) - 1) >>> 63);
    }

    public static void E(int[] iArr, int i10, int i11) {
        int i12 = i11 - i10;
        if (i12 < 2) {
            return;
        }
        int i13 = 1;
        while (i13 < i12 - i13) {
            i13 += i13;
        }
        for (int i14 = i13; i14 > 0; i14 >>>= 1) {
            int i15 = 0;
            for (int i16 = 0; i16 < i12 - i14; i16++) {
                if ((i16 & i14) == 0) {
                    int i17 = i10 + i16;
                    int i18 = i17 + i14;
                    int i19 = iArr[i18];
                    int i20 = iArr[i17];
                    int i21 = i19 ^ i20;
                    int i22 = i19 - i20;
                    int i23 = ((((i19 ^ i22) & i21) ^ i22) >> 31) & i21;
                    iArr[i17] = i20 ^ i23;
                    iArr[i18] = iArr[i18] ^ i23;
                }
            }
            for (int i24 = i13; i24 > i14; i24 >>>= 1) {
                while (i15 < i12 - i24) {
                    if ((i15 & i14) == 0) {
                        int i25 = i10 + i15;
                        int i26 = i25 + i14;
                        int i27 = iArr[i26];
                        for (int i28 = i24; i28 > i14; i28 >>>= 1) {
                            int i29 = i25 + i28;
                            int i30 = iArr[i29];
                            int i31 = i30 ^ i27;
                            int i32 = i30 - i27;
                            int i33 = i31 & ((i32 ^ ((i32 ^ i30) & i31)) >> 31);
                            i27 ^= i33;
                            iArr[i29] = i30 ^ i33;
                        }
                        iArr[i26] = i27;
                    }
                    i15++;
                }
            }
        }
    }

    public static void F(long[] jArr, int i10, int i11) {
        int i12 = i11 - i10;
        if (i12 < 2) {
            return;
        }
        int i13 = 1;
        while (i13 < i12 - i13) {
            i13 += i13;
        }
        for (int i14 = i13; i14 > 0; i14 >>>= 1) {
            int i15 = 0;
            for (int i16 = 0; i16 < i12 - i14; i16++) {
                if ((i16 & i14) == 0) {
                    int i17 = i10 + i16;
                    int i18 = i17 + i14;
                    long j10 = jArr[i18];
                    long j11 = jArr[i17];
                    long j12 = (j10 ^ j11) & (-((j10 - j11) >>> 63));
                    jArr[i17] = j11 ^ j12;
                    jArr[i18] = jArr[i18] ^ j12;
                }
            }
            for (int i19 = i13; i19 > i14; i19 >>>= 1) {
                while (i15 < i12 - i19) {
                    if ((i15 & i14) == 0) {
                        int i20 = i10 + i15;
                        int i21 = i20 + i14;
                        long j13 = jArr[i21];
                        for (int i22 = i19; i22 > i14; i22 >>>= 1) {
                            int i23 = i20 + i22;
                            long j14 = jArr[i23];
                            long j15 = (-((j14 - j13) >>> 63)) & (j13 ^ j14);
                            j13 ^= j15;
                            jArr[i23] = j14 ^ j15;
                        }
                        jArr[i21] = j13;
                    }
                    i15++;
                }
            }
        }
    }

    public static void b(byte[] bArr, long j10, long j11, short[] sArr, int i10, long j12, long j13, int[] iArr) {
        long j14;
        long j15 = j13;
        if (j12 == 1) {
            int i11 = (int) (j10 >> 3);
            bArr[i11] = (byte) ((t(iArr, i10) << ((int) (j10 & 7))) ^ bArr[i11]);
            return;
        }
        if (sArr != null) {
            for (long j16 = 0; j16 < j15; j16++) {
                int i12 = (int) j16;
                iArr[i12] = sArr[(int) (j16 ^ 1)] | ((sArr[i12] ^ 1) << 16);
            }
        } else {
            for (long j17 = 0; j17 < j15; j17++) {
                long j18 = i10;
                iArr[(int) j17] = ((t(iArr, (int) (j18 + j17)) ^ 1) << 16) | t(iArr, (int) (j18 + (j17 ^ 1)));
            }
        }
        int i13 = (int) j15;
        E(iArr, 0, i13);
        for (long j19 = 0; j19 < j15; j19++) {
            int i14 = (int) j19;
            int i15 = 65535 & iArr[i14];
            if (j19 >= i15) {
                i14 = i15;
            }
            iArr[(int) (j15 + j19)] = i14 | (i15 << 16);
        }
        for (long j20 = 0; j20 < j15; j20++) {
            iArr[(int) j20] = (int) ((iArr[r7] << 16) | j20);
        }
        E(iArr, 0, i13);
        for (long j21 = 0; j21 < j15; j21++) {
            int i16 = (int) j21;
            iArr[i16] = (iArr[i16] << 16) + (iArr[(int) (j15 + j21)] >> 16);
        }
        E(iArr, 0, i13);
        if (j12 <= 10) {
            for (long j22 = 0; j22 < j15; j22++) {
                int i17 = (int) (j15 + j22);
                iArr[i17] = ((iArr[(int) j22] & 65535) << 10) | (iArr[i17] & 1023);
            }
            long j23 = 1;
            for (long j24 = 1; j23 < j12 - j24; j24 = 1) {
                long j25 = 0;
                while (j25 < j15) {
                    iArr[(int) j25] = (int) (((iArr[(int) (j15 + j25)] & Half.NEGATIVE_INFINITY) << 6) | j25);
                    j25++;
                    j23 = j23;
                }
                long j26 = j23;
                E(iArr, 0, i13);
                for (long j27 = 0; j27 < j15; j27++) {
                    int i18 = (int) j27;
                    iArr[i18] = (iArr[i18] << 20) | iArr[(int) (j15 + j27)];
                }
                E(iArr, 0, i13);
                for (long j28 = 0; j28 < j15; j28++) {
                    int i19 = iArr[(int) j28];
                    int i20 = 1048575 & i19;
                    int i21 = (int) (j15 + j28);
                    int i22 = (i19 & 1047552) | (iArr[i21] & 1023);
                    if (i20 >= i22) {
                        i20 = i22;
                    }
                    iArr[i21] = i20;
                }
                j23 = j26 + 1;
            }
            for (long j29 = 0; j29 < j15; j29++) {
                int i23 = (int) (j15 + j29);
                iArr[i23] = iArr[i23] & 1023;
            }
        } else {
            for (long j30 = 0; j30 < j15; j30++) {
                int i24 = (int) (j15 + j30);
                iArr[i24] = (iArr[(int) j30] << 16) | (iArr[i24] & 65535);
            }
            long j31 = 1;
            for (long j32 = 1; j31 < j12 - j32; j32 = 1) {
                for (long j33 = 0; j33 < j15; j33++) {
                    iArr[(int) j33] = (int) ((iArr[(int) (j15 + j33)] & (-65536)) | j33);
                }
                E(iArr, 0, i13);
                for (long j34 = 0; j34 < j15; j34++) {
                    int i25 = (int) j34;
                    iArr[i25] = (iArr[i25] << 16) | (iArr[(int) (j15 + j34)] & 65535);
                }
                if (j31 < j12 - 2) {
                    for (long j35 = 0; j35 < j15; j35++) {
                        int i26 = (int) (j15 + j35);
                        iArr[i26] = (iArr[(int) j35] & (-65536)) | (iArr[i26] >> 16);
                    }
                    E(iArr, i13, (int) (j15 * 2));
                    for (long j36 = 0; j36 < j15; j36++) {
                        int i27 = (int) (j15 + j36);
                        iArr[i27] = (iArr[i27] << 16) | (iArr[(int) j36] & 65535);
                    }
                }
                E(iArr, 0, i13);
                for (long j37 = 0; j37 < j15; j37++) {
                    int i28 = (int) (j15 + j37);
                    int i29 = iArr[i28];
                    int i30 = (i29 & (-65536)) | (iArr[(int) j37] & 65535);
                    if (i30 < i29) {
                        iArr[i28] = i30;
                    }
                }
                j31++;
            }
            for (long j38 = 0; j38 < j15; j38++) {
                int i31 = (int) (j15 + j38);
                iArr[i31] = iArr[i31] & 65535;
            }
        }
        long j39 = 0;
        if (sArr != null) {
            while (j39 < j15) {
                iArr[(int) j39] = (int) ((sArr[r0] << 16) + j39);
                j39++;
            }
        } else {
            while (j39 < j15) {
                iArr[(int) j39] = (int) ((t(iArr, (int) (i10 + j39)) << 16) + j39);
                j39++;
            }
        }
        E(iArr, 0, i13);
        long j40 = j10;
        long j41 = 2;
        long j42 = 0;
        while (true) {
            j14 = j15 / j41;
            if (j42 >= j14) {
                break;
            }
            long j43 = j42 * j41;
            long j44 = j15 + j43;
            int i32 = (int) j44;
            int i33 = iArr[i32] & 1;
            int i34 = (int) (i33 + j43);
            int i35 = (int) (j40 >> 3);
            bArr[i35] = (byte) ((i33 << ((int) (j40 & 7))) ^ bArr[i35]);
            j40 += j11;
            iArr[i32] = (iArr[(int) j43] << 16) | i34;
            iArr[(int) (j44 + 1)] = (iArr[(int) (j43 + 1)] << 16) | (i34 ^ 1);
            j42++;
            j15 = j13;
            i13 = i13;
            j41 = 2;
        }
        long j45 = j41;
        long j46 = j13 * j45;
        E(iArr, i13, (int) j46);
        long j47 = j12 * j45;
        long j48 = j40 + ((j47 - 3) * j11 * j14);
        long j49 = 0;
        while (j49 < j14) {
            long j50 = j49 * j45;
            long j51 = j13 + j50;
            int i36 = iArr[(int) j51];
            int i37 = i36 & 1;
            long j52 = j48;
            int i38 = (int) (i37 + j50);
            long j53 = j46;
            int i39 = (int) (j52 >> 3);
            bArr[i39] = (byte) (bArr[i39] ^ (i37 << ((int) (j52 & 7))));
            iArr[(int) j50] = (i36 & 65535) | (i38 << 16);
            iArr[(int) (j50 + 1)] = (iArr[(int) (j51 + 1)] & 65535) | ((i38 ^ 1) << 16);
            j49++;
            j48 = j52 + j11;
            j46 = j53;
            j47 = j47;
            j45 = 2;
        }
        long j54 = j46;
        E(iArr, 0, i13);
        long j55 = 2;
        long j56 = j48 - (((j47 - 2) * j11) * j14);
        short[] sArr2 = new short[i13 * 4];
        long j57 = 0;
        while (j57 < j54) {
            long j58 = j57 * j55;
            int i40 = iArr[(int) j57];
            sArr2[(int) j58] = (short) i40;
            sArr2[(int) (j58 + 1)] = (short) ((i40 & (-65536)) >> 16);
            j57++;
            j55 = 2;
        }
        for (long j59 = 0; j59 < j14; j59++) {
            long j60 = j59 * 2;
            sArr2[(int) j59] = (short) ((iArr[(int) j60] & 65535) >>> 1);
            sArr2[(int) (j59 + j14)] = (short) ((iArr[(int) (j60 + 1)] & 65535) >>> 1);
        }
        for (long j61 = 0; j61 < j14; j61++) {
            long j62 = j61 * 2;
            iArr[(int) (j13 + (j13 / 4) + j61)] = (sArr2[(int) (j62 + 1)] << 16) | sArr2[(int) j62];
        }
        long j63 = j11 * 2;
        long j64 = j13 + (j13 / 4);
        long j65 = j12 - 1;
        b(bArr, j56, j63, null, ((int) j64) * 2, j65, j14, iArr);
        b(bArr, j56 + j11, j63, null, (int) ((j64 * 2) + j14), j65, j14, iArr);
    }

    public static void e(byte[] bArr, short[] sArr, long j10, long j11) {
        long j12 = 2;
        int[] iArr = new int[(int) (j11 * 2)];
        int i10 = (int) j11;
        short[] sArr2 = new short[i10];
        while (true) {
            short s10 = 0;
            for (int i11 = 0; i11 < (((((j10 * j12) - 1) * j11) / j12) + 7) / 8; i11++) {
                bArr[i11] = 0;
            }
            int i12 = i10;
            short[] sArr3 = sArr2;
            int[] iArr2 = iArr;
            b(bArr, 0L, 1L, sArr, 0, j10, j11, iArr);
            for (int i13 = 0; i13 < j11; i13++) {
                sArr3[i13] = (short) i13;
            }
            int i14 = 0;
            for (int i15 = 0; i15 < j10; i15++) {
                x(sArr3, bArr, i14, i15, i12);
                i14 = (int) (i14 + (j11 >> 4));
            }
            for (int i16 = (int) (j10 - 2); i16 >= 0; i16--) {
                x(sArr3, bArr, i14, i16, i12);
                i14 = (int) (i14 + (j11 >> 4));
            }
            int i17 = 0;
            while (i17 < j11) {
                short s11 = (short) (s10 | (sArr[i17] ^ sArr3[i17]));
                i17++;
                s10 = s11;
            }
            if (s10 == 0) {
                return;
            }
            sArr2 = sArr3;
            i10 = i12;
            iArr = iArr2;
            j12 = 2;
        }
    }

    public static int f(long j10) {
        long j11 = ~j10;
        long j12 = 72340172838076673L;
        long j13 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            j12 &= j11 >>> i10;
            j13 += j12;
        }
        long j14 = 578721382704613384L & j13;
        long j15 = j14 | (j14 >>> 1);
        long j16 = j15 | (j15 >>> 2);
        long j17 = j13 >>> 8;
        long j18 = j13 + (j17 & j16);
        for (int i11 = 2; i11 < 8; i11++) {
            j16 &= j16 >>> 8;
            j17 >>>= 8;
            j18 += j17 & j16;
        }
        return ((int) j18) & 255;
    }

    public static short t(int[] iArr, int i10) {
        int i11 = i10 / 2;
        return (short) (i10 % 2 == 0 ? iArr[i11] : (iArr[i11] & (-65536)) >> 16);
    }

    public static void x(short[] sArr, byte[] bArr, int i10, int i11, int i12) {
        int i13 = 1 << i11;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15 += i13 * 2) {
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = i15 + i16;
                short s10 = sArr[i17];
                int i18 = i17 + i13;
                int i19 = (sArr[i18] ^ s10) & (-((bArr[(i14 >> 3) + i10] >> (i14 & 7)) & 1));
                sArr[i17] = (short) (s10 ^ i19);
                sArr[i18] = (short) (sArr[i18] ^ i19);
                i14++;
            }
        }
    }

    public static int y(short s10, int i10) {
        return s10 < i10 ? s10 : i10;
    }

    public final int A(byte[] bArr, byte[] bArr2, int[] iArr, short[] sArr, long[] jArr) {
        int i10;
        int i11;
        int i12 = this.f32343b;
        short[] sArr2 = new short[i12 + 1];
        sArr2[i12] = 1;
        int i13 = 0;
        for (int i14 = 0; i14 < this.f32343b; i14++) {
            sArr2[i14] = p.d(bArr2, (i14 * 2) + 40, this.f32351j);
        }
        int i15 = 1 << this.f32344c;
        long[] jArr2 = new long[i15];
        for (int i16 = 0; i16 < (1 << this.f32344c); i16++) {
            long j10 = iArr[i16];
            jArr2[i16] = j10;
            long j11 = j10 << 31;
            jArr2[i16] = j11;
            long j12 = j11 | i16;
            jArr2[i16] = j12;
            jArr2[i16] = j12 & Long.MAX_VALUE;
        }
        F(jArr2, 0, i15);
        for (int i17 = 1; i17 < (1 << this.f32344c); i17++) {
            if ((jArr2[i17 - 1] >> 31) == (jArr2[i17] >> 31)) {
                return -1;
            }
        }
        short[] sArr3 = new short[this.f32342a];
        for (int i18 = 0; i18 < (1 << this.f32344c); i18++) {
            sArr[i18] = (short) (jArr2[i18] & this.f32351j);
        }
        int i19 = 0;
        while (true) {
            i10 = this.f32342a;
            if (i19 >= i10) {
                break;
            }
            sArr3[i19] = p.a(sArr[i19], this.f32344c);
            i19++;
        }
        short[] sArr4 = new short[i10];
        B(sArr4, sArr2, sArr3);
        int i20 = 0;
        while (true) {
            i11 = this.f32342a;
            if (i20 >= i11) {
                break;
            }
            sArr4[i20] = this.f32354m.b(sArr4[i20]);
            i20++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance(Byte.TYPE, this.f32347f, i11 / 8);
        for (int i21 = 0; i21 < this.f32347f; i21++) {
            for (int i22 = 0; i22 < this.f32342a / 8; i22++) {
                bArr3[i21][i22] = 0;
            }
        }
        int i23 = 0;
        while (i23 < this.f32343b) {
            for (int i24 = 0; i24 < this.f32342a; i24 += 8) {
                int i25 = 0;
                while (true) {
                    int i26 = this.f32344c;
                    if (i25 < i26) {
                        bArr3[(i26 * i23) + i25][i24 / 8] = (byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) ((sArr4[i24 + 7] >>> i25) & 1)) << 1)) | ((sArr4[i24 + 6] >>> i25) & 1))) << 1)) | ((sArr4[i24 + 5] >>> i25) & 1))) << 1)) | ((sArr4[i24 + 4] >>> i25) & 1))) << 1)) | ((sArr4[i24 + 3] >>> i25) & 1))) << 1)) | ((sArr4[i24 + 2] >>> i25) & 1))) << 1)) | ((sArr4[i24 + 1] >>> i25) & 1))) << 1)) | ((sArr4[i24] >>> i25) & 1));
                        i25++;
                    }
                }
            }
            for (int i27 = 0; i27 < this.f32342a; i27++) {
                sArr4[i27] = this.f32354m.d(sArr4[i27], sArr3[i27]);
            }
            i23++;
        }
        int i28 = 0;
        while (true) {
            int i29 = this.f32347f;
            if (i28 < i29) {
                i23 = i28 >>> 3;
                int i30 = i28 & 7;
                if (this.f32358q && i28 == i29 - 32) {
                    if (z(bArr3, sArr, jArr) != 0) {
                        return -1;
                    }
                }
                int i31 = i28 + 1;
                int i32 = i31;
                while (i32 < this.f32347f) {
                    byte b10 = (byte) (-((byte) (((byte) (((byte) (bArr3[i28][i23] ^ bArr3[i32][i23])) >> i30)) & 1)));
                    for (int i33 = i13; i33 < this.f32342a / 8; i33++) {
                        byte[] bArr4 = bArr3[i28];
                        bArr4[i33] = (byte) (bArr4[i33] ^ (bArr3[i32][i33] & b10));
                    }
                    i32++;
                    i13 = 0;
                }
                if (((bArr3[i28][i23] >> i30) & 1) == 0) {
                    return -1;
                }
                for (int i34 = 0; i34 < this.f32347f; i34++) {
                    if (i34 != i28) {
                        byte b11 = (byte) (-((byte) (((byte) (bArr3[i34][i23] >> i30)) & 1)));
                        for (int i35 = 0; i35 < this.f32342a / 8; i35++) {
                            byte[] bArr5 = bArr3[i34];
                            bArr5[i35] = (byte) (bArr5[i35] ^ (bArr3[i28][i35] & b11));
                        }
                    }
                }
                i28 = i31;
                i13 = 0;
            } else {
                if (bArr == null) {
                    return 0;
                }
                if (this.f32356o) {
                    int i36 = i29 % 8;
                    if (i36 == 0) {
                        System.arraycopy(bArr3[i23], (i29 - 1) / 8, bArr, 0, this.f32342a / 8);
                        return 0;
                    }
                    int i37 = 0;
                    int i38 = 0;
                    while (true) {
                        int i39 = this.f32347f;
                        if (i37 >= i39) {
                            return 0;
                        }
                        int i40 = (i39 - 1) / 8;
                        while (i40 < (this.f32342a / 8) - 1) {
                            byte[] bArr6 = bArr3[i37];
                            int i41 = (bArr6[i40] & 255) >>> i36;
                            i40++;
                            bArr[i38] = (byte) ((bArr6[i40] << (8 - i36)) | i41);
                            i38++;
                        }
                        bArr[i38] = (byte) ((bArr3[i37][i40] & 255) >>> i36);
                        i37++;
                        i38++;
                    }
                } else {
                    int i42 = ((this.f32342a - i29) + 7) / 8;
                    int i43 = 0;
                    while (true) {
                        int i44 = this.f32347f;
                        if (i43 >= i44) {
                            return 0;
                        }
                        System.arraycopy(bArr3[i43], i44 / 8, bArr, i42 * i43, i42);
                        i43++;
                    }
                }
            }
        }
    }

    public final void B(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i10 = 0; i10 < this.f32342a; i10++) {
            sArr[i10] = j(sArr2, sArr3[i10]);
        }
    }

    public final void G(short[] sArr, short[] sArr2, short[] sArr3, byte[] bArr) {
        short s10 = (short) (bArr[0] & 1);
        short s11 = sArr3[0];
        short j10 = j(sArr2, s11);
        o oVar = this.f32354m;
        short b10 = (short) ((-s10) & oVar.b(oVar.h(j10)));
        sArr[0] = b10;
        for (int i10 = 1; i10 < this.f32343b * 2; i10++) {
            b10 = this.f32354m.d(b10, s11);
            sArr[i10] = b10;
        }
        for (int i11 = 1; i11 < this.f32342a; i11++) {
            short s12 = (short) ((bArr[i11 / 8] >> (i11 % 8)) & 1);
            short s13 = sArr3[i11];
            short j11 = j(sArr2, s13);
            o oVar2 = this.f32354m;
            short d10 = this.f32354m.d(oVar2.b(oVar2.h(j11)), s12);
            sArr[0] = (short) (sArr[0] ^ d10);
            for (int i12 = 1; i12 < this.f32343b * 2; i12++) {
                d10 = this.f32354m.d(d10, s13);
                sArr[i12] = (short) (sArr[i12] ^ d10);
            }
        }
    }

    public final void H(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        short[] sArr = new short[this.f32342a / 8];
        int i10 = this.f32347f % 8;
        for (int i11 = 0; i11 < this.f32350i; i11++) {
            bArr[i11] = 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f32347f; i13++) {
            for (int i14 = 0; i14 < this.f32342a / 8; i14++) {
                sArr[i14] = 0;
            }
            int i15 = 0;
            while (true) {
                int i16 = this.f32349h;
                if (i15 >= i16) {
                    break;
                }
                sArr[((this.f32342a / 8) - i16) + i15] = bArr2[i12 + i15];
                i15++;
            }
            if (this.f32356o) {
                for (int i17 = (this.f32342a / 8) - 1; i17 >= (this.f32342a / 8) - this.f32349h; i17--) {
                    sArr[i17] = (short) ((((sArr[i17] & 255) << i10) | ((sArr[i17 - 1] & 255) >>> (8 - i10))) & 255);
                }
            }
            int i18 = i13 / 8;
            int i19 = i13 % 8;
            sArr[i18] = (short) (sArr[i18] | (1 << i19));
            byte b10 = 0;
            for (int i20 = 0; i20 < this.f32342a / 8; i20++) {
                b10 = (byte) (b10 ^ (sArr[i20] & bArr3[i20]));
            }
            byte b11 = (byte) ((b10 >>> 4) ^ b10);
            byte b12 = (byte) (b11 ^ (b11 >>> 2));
            bArr[i18] = (byte) ((((byte) (1 & ((byte) (b12 ^ (b12 >>> 1))))) << i19) | bArr[i18]);
            i12 += this.f32349h;
        }
    }

    public final void a(short[] sArr, short[] sArr2) {
        int i10;
        int i11 = this.f32343b;
        short[] sArr3 = new short[i11 + 1];
        short[] sArr4 = new short[i11 + 1];
        short s10 = 1;
        short[] sArr5 = new short[i11 + 1];
        int i12 = 0;
        for (int i13 = 0; i13 < this.f32343b + 1; i13++) {
            sArr5[i13] = 0;
            sArr4[i13] = 0;
        }
        sArr4[0] = 1;
        sArr5[1] = 1;
        short s11 = 1;
        short s12 = 0;
        short s13 = 0;
        while (s12 < this.f32343b * 2) {
            int i14 = 0;
            for (int i15 = 0; i15 <= y(s12, this.f32343b); i15++) {
                i14 ^= this.f32354m.e(sArr4[i15], sArr2[s12 - i15]);
            }
            short g10 = this.f32354m.g(i14);
            short s14 = (short) (((short) (((short) (((short) (g10 - 1)) >> 15)) & s10)) - s10);
            short s15 = (short) (((short) (((short) (((short) (((short) (s12 - (s13 * 2))) >> 15)) & s10)) - s10)) & s14);
            for (int i16 = 0; i16 <= this.f32343b; i16++) {
                sArr3[i16] = sArr4[i16];
            }
            short a10 = this.f32354m.a(s11, g10);
            int i17 = 0;
            while (true) {
                i10 = this.f32343b;
                if (i17 > i10) {
                    break;
                }
                sArr4[i17] = (short) ((this.f32354m.d(a10, sArr5[i17]) & s14) ^ sArr4[i17]);
                i17++;
            }
            int i18 = ~s15;
            int i19 = s12 + 1;
            s13 = (short) (((i19 - s13) & s15) | (s13 & i18));
            for (int i20 = i10 - 1; i20 >= 0; i20--) {
                sArr5[i20 + 1] = (short) ((sArr5[i20] & i18) | (sArr3[i20] & s15));
            }
            sArr5[0] = 0;
            s11 = (short) ((i18 & s11) | (g10 & s15));
            s12 = (short) i19;
            s10 = 1;
        }
        while (true) {
            int i21 = this.f32343b;
            if (i12 > i21) {
                return;
            }
            sArr[i12] = sArr4[i21 - i12];
            i12++;
        }
    }

    public int c(byte[] bArr) {
        return ((byte) ((((byte) (((byte) ((bArr[this.f32350i - 1] & 255) >>> (this.f32347f % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public int d(byte[] bArr) {
        byte b10 = 0;
        for (int i10 = 0; i10 < this.f32347f; i10++) {
            int i11 = this.f32349h;
            b10 = (byte) (b10 | bArr[((i10 * i11) + i11) - 1]);
        }
        return ((byte) ((((byte) (((byte) ((b10 & 255) >>> (this.f32348g % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public byte[] g(byte[] bArr) {
        int i10;
        byte[] bArr2 = new byte[r()];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int i11 = (this.f32342a / 8) + ((1 << this.f32344c) * 4) + this.f32345d;
        int i12 = i11 + 32;
        byte[] bArr3 = new byte[i12];
        Q q10 = new Q(256);
        q10.update((byte) 64);
        q10.update(bArr, 0, 32);
        q10.e(bArr3, 0, i12);
        if (bArr.length <= 40) {
            short[] sArr = new short[this.f32343b];
            int i13 = this.f32345d;
            byte[] bArr4 = new byte[i13];
            int i14 = i11 - i13;
            for (int i15 = 0; i15 < this.f32343b; i15++) {
                sArr[i15] = p.d(bArr3, (i15 * 2) + i14, this.f32351j);
            }
            l(sArr);
            for (int i16 = 0; i16 < this.f32343b; i16++) {
                p.f(bArr4, i16 * 2, sArr[i16]);
            }
            System.arraycopy(bArr4, 0, bArr2, 40, this.f32345d);
        }
        int length = bArr.length;
        int i17 = this.f32345d;
        if (length <= i17 + 40) {
            int i18 = this.f32344c;
            int[] iArr = new int[1 << i18];
            short[] sArr2 = new short[1 << i18];
            int i19 = (i11 - i17) - ((1 << i18) * 4);
            int i20 = 0;
            while (true) {
                i10 = this.f32344c;
                if (i20 >= (1 << i10)) {
                    break;
                }
                iArr[i20] = p.b(bArr3, (i20 * 4) + i19);
                i20++;
            }
            if (this.f32358q) {
                A(null, bArr2, iArr, sArr2, new long[]{0});
            } else {
                int i21 = 1 << i10;
                long[] jArr = new long[i21];
                for (int i22 = 0; i22 < (1 << this.f32344c); i22++) {
                    long j10 = iArr[i22];
                    jArr[i22] = j10;
                    long j11 = j10 << 31;
                    jArr[i22] = j11;
                    long j12 = j11 | i22;
                    jArr[i22] = j12;
                    jArr[i22] = j12 & Long.MAX_VALUE;
                }
                F(jArr, 0, i21);
                for (int i23 = 0; i23 < (1 << this.f32344c); i23++) {
                    sArr2[i23] = (short) (jArr[i23] & this.f32351j);
                }
            }
            int i24 = this.f32346e;
            byte[] bArr5 = new byte[i24];
            e(bArr5, sArr2, this.f32344c, 1 << r2);
            System.arraycopy(bArr5, 0, bArr2, this.f32345d + 40, i24);
        }
        int r10 = r();
        int i25 = this.f32342a;
        System.arraycopy(bArr3, 0, bArr2, r10 - (i25 / 8), i25 / 8);
        return bArr2;
    }

    public final int h(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10;
        int i11;
        int i12 = this.f32343b;
        short[] sArr = new short[i12 + 1];
        int i13 = this.f32342a;
        short[] sArr2 = new short[i13];
        short[] sArr3 = new short[i12 * 2];
        short[] sArr4 = new short[i12 * 2];
        short[] sArr5 = new short[i12 + 1];
        short[] sArr6 = new short[i13];
        byte[] bArr4 = new byte[i13 / 8];
        int i14 = 0;
        while (true) {
            i10 = this.f32350i;
            if (i14 >= i10) {
                break;
            }
            bArr4[i14] = bArr3[i14];
            i14++;
        }
        while (i10 < this.f32342a / 8) {
            bArr4[i10] = 0;
            i10++;
        }
        int i15 = 0;
        while (true) {
            i11 = this.f32343b;
            if (i15 >= i11) {
                break;
            }
            sArr[i15] = p.d(bArr2, (i15 * 2) + 40, this.f32351j);
            i15++;
        }
        sArr[i11] = 1;
        this.f32355n.a(sArr2, bArr2);
        G(sArr3, sArr, sArr2, bArr4);
        a(sArr5, sArr3);
        B(sArr6, sArr5, sArr2);
        for (int i16 = 0; i16 < this.f32342a / 8; i16++) {
            bArr[i16] = 0;
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.f32342a; i18++) {
            short c10 = (short) (this.f32354m.c(sArr6[i18]) & 1);
            int i19 = i18 / 8;
            bArr[i19] = (byte) (bArr[i19] | (c10 << (i18 % 8)));
            i17 += c10;
        }
        G(sArr4, sArr, sArr2, bArr);
        int i20 = this.f32343b ^ i17;
        for (int i21 = 0; i21 < this.f32343b * 2; i21++) {
            i20 |= sArr3[i21] ^ sArr4[i21];
        }
        return (((i20 - 1) >> 15) & 1) ^ 1;
    }

    public final void i(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        k(bArr3, secureRandom);
        H(bArr, bArr2, bArr3);
    }

    public final short j(short[] sArr, short s10) {
        int i10 = this.f32343b;
        short s11 = sArr[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            s11 = (short) (this.f32354m.d(s11, s10) ^ sArr[i11]);
        }
        return s11;
    }

    public final void k(byte[] bArr, SecureRandom secureRandom) {
        int i10;
        int i11 = this.f32343b;
        short[] sArr = new short[i11 * 2];
        short[] sArr2 = new short[i11];
        byte[] bArr2 = new byte[i11];
        while (true) {
            if (this.f32357p) {
                byte[] bArr3 = new byte[this.f32343b * 4];
                secureRandom.nextBytes(bArr3);
                for (int i12 = 0; i12 < this.f32343b * 2; i12++) {
                    sArr[i12] = p.d(bArr3, i12 * 2, this.f32351j);
                }
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    i10 = this.f32343b;
                    if (i13 >= i10 * 2 || i14 >= i10) {
                        break;
                    }
                    short s10 = sArr[i13];
                    if (s10 < this.f32342a) {
                        sArr2[i14] = s10;
                        i14++;
                    }
                    i13++;
                }
                if (i14 < i10) {
                    continue;
                }
            } else {
                byte[] bArr4 = new byte[this.f32343b * 2];
                secureRandom.nextBytes(bArr4);
                for (int i15 = 0; i15 < this.f32343b; i15++) {
                    sArr2[i15] = p.d(bArr4, i15 * 2, this.f32351j);
                }
            }
            boolean z10 = false;
            for (int i16 = 1; i16 < this.f32343b && !z10; i16++) {
                int i17 = 0;
                while (true) {
                    if (i17 >= i16) {
                        break;
                    }
                    if (sArr2[i16] == sArr2[i17]) {
                        z10 = true;
                        break;
                    }
                    i17++;
                }
            }
            if (!z10) {
                break;
            }
        }
        for (int i18 = 0; i18 < this.f32343b; i18++) {
            bArr2[i18] = (byte) (1 << (sArr2[i18] & 7));
        }
        for (short s11 = 0; s11 < this.f32342a / 8; s11 = (short) (s11 + 1)) {
            bArr[s11] = 0;
            for (int i19 = 0; i19 < this.f32343b; i19++) {
                bArr[s11] = (byte) ((((short) (C(s11, (short) (sArr2[i19] >> 3)) & 255)) & bArr2[i19]) | bArr[s11]);
            }
        }
    }

    public final int l(short[] sArr) {
        int i10;
        int i11 = this.f32343b;
        int i12 = 2;
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, i11 + 1, i11);
        sArr2[0][0] = 1;
        System.arraycopy(sArr, 0, sArr2[1], 0, this.f32343b);
        int[] iArr = new int[(this.f32343b * 2) - 1];
        while (true) {
            i10 = this.f32343b;
            if (i12 >= i10) {
                break;
            }
            this.f32354m.j(i10, this.f32352k, sArr2[i12], sArr2[i12 >>> 1], iArr);
            this.f32354m.f(this.f32343b, this.f32352k, sArr2[i12 + 1], sArr2[i12], sArr, iArr);
            i12 += 2;
        }
        if (i12 == i10) {
            this.f32354m.j(i10, this.f32352k, sArr2[i12], sArr2[i12 >>> 1], iArr);
        }
        int i13 = 0;
        while (true) {
            int i14 = this.f32343b;
            if (i13 >= i14) {
                System.arraycopy(sArr2[i14], 0, sArr, 0, i14);
                return 0;
            }
            int i15 = i13 + 1;
            for (int i16 = i15; i16 < this.f32343b; i16++) {
                short c10 = this.f32354m.c(sArr2[i13][i13]);
                for (int i17 = i13; i17 < this.f32343b + 1; i17++) {
                    short[] sArr3 = sArr2[i17];
                    sArr3[i13] = (short) (sArr3[i13] ^ ((short) (sArr3[i16] & c10)));
                }
            }
            short s10 = sArr2[i13][i13];
            if (s10 == 0) {
                return -1;
            }
            short b10 = this.f32354m.b(s10);
            for (int i18 = i13; i18 < this.f32343b + 1; i18++) {
                short[] sArr4 = sArr2[i18];
                sArr4[i13] = this.f32354m.d(sArr4[i13], b10);
            }
            for (int i19 = 0; i19 < this.f32343b; i19++) {
                if (i19 != i13) {
                    short s11 = sArr2[i13][i19];
                    for (int i20 = i13; i20 <= this.f32343b; i20++) {
                        short[] sArr5 = sArr2[i20];
                        sArr5[i19] = (short) (sArr5[i19] ^ this.f32354m.d(sArr5[i13], s11));
                    }
                }
            }
            i13 = i15;
        }
    }

    public byte[] m(byte[] bArr) {
        byte[] bArr2 = new byte[s()];
        int i10 = this.f32344c;
        short[] sArr = new short[1 << i10];
        long[] jArr = {0};
        int[] iArr = new int[1 << i10];
        int i11 = (this.f32342a / 8) + ((1 << i10) * 4);
        byte[] bArr3 = new byte[i11];
        int i12 = ((i11 - 32) - this.f32345d) - ((1 << i10) * 4);
        Q q10 = new Q(256);
        q10.update((byte) 64);
        q10.update(bArr, 0, 32);
        q10.e(bArr3, 0, i11);
        for (int i13 = 0; i13 < (1 << this.f32344c); i13++) {
            iArr[i13] = p.b(bArr3, (i13 * 4) + i12);
        }
        A(bArr2, bArr, iArr, sArr, jArr);
        return bArr2;
    }

    public int n() {
        return this.f32350i;
    }

    public int o() {
        return this.f32346e;
    }

    public int p() {
        return this.f32353l;
    }

    public int q() {
        return this.f32345d;
    }

    public int r() {
        return this.f32346e + this.f32345d + (this.f32342a / 8) + 40;
    }

    public int s() {
        if (!this.f32356o) {
            return (this.f32347f * this.f32348g) / 8;
        }
        int i10 = this.f32347f;
        return i10 * ((this.f32342a / 8) - ((i10 - 1) / 8));
    }

    public int u(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10 = this.f32342a;
        byte[] bArr4 = new byte[i10 / 8];
        int i11 = (i10 / 8) + 1 + this.f32350i;
        byte[] bArr5 = new byte[i11];
        int c10 = this.f32356o ? c(bArr2) : 0;
        short h10 = (short) (((short) (((short) (((byte) h(bArr4, bArr3, bArr2)) - 1)) >> 8)) & 255);
        bArr5[0] = (byte) (h10 & 1);
        int i12 = 0;
        while (i12 < this.f32342a / 8) {
            int i13 = i12 + 1;
            bArr5[i13] = (byte) ((bArr4[i12] & h10) | ((~h10) & bArr3[i12 + 40 + this.f32345d + this.f32346e]));
            i12 = i13;
        }
        for (int i14 = 0; i14 < this.f32350i; i14++) {
            bArr5[(this.f32342a / 8) + 1 + i14] = bArr2[i14];
        }
        Q q10 = new Q(256);
        q10.update(bArr5, 0, i11);
        q10.e(bArr, 0, bArr.length);
        if (!this.f32356o) {
            return 0;
        }
        byte b10 = (byte) c10;
        for (int i15 = 0; i15 < bArr.length; i15++) {
            bArr[i15] = (byte) (bArr[i15] | b10);
        }
        return c10;
    }

    public int v(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        int i10 = this.f32342a / 8;
        byte[] bArr4 = new byte[i10];
        int d10 = this.f32356o ? d(bArr3) : 0;
        i(bArr, bArr3, bArr4, secureRandom);
        Q q10 = new Q(256);
        q10.update((byte) 1);
        q10.update(bArr4, 0, i10);
        q10.update(bArr, 0, bArr.length);
        q10.e(bArr2, 0, bArr2.length);
        if (!this.f32356o) {
            return 0;
        }
        byte b10 = (byte) (((byte) d10) ^ 255);
        for (int i11 = 0; i11 < this.f32350i; i11++) {
            bArr[i11] = (byte) (bArr[i11] & b10);
        }
        for (int i12 = 0; i12 < 32; i12++) {
            bArr2[i12] = (byte) (bArr2[i12] & b10);
        }
        return d10;
    }

    public void w(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int i10;
        int i11;
        short[] sArr;
        byte[] bArr3;
        Q q10;
        int i12;
        long j10;
        int i13 = 32;
        byte[] bArr4 = new byte[32];
        int i14 = 0;
        byte[] bArr5 = {64};
        secureRandom.nextBytes(bArr4);
        int i15 = (this.f32342a / 8) + ((1 << this.f32344c) * 4) + (this.f32343b * 2);
        int i16 = i15 + 32;
        byte[] bArr6 = new byte[i16];
        long[] jArr = {0};
        Q q11 = new Q(256);
        byte[] bArr7 = bArr4;
        while (true) {
            q11.update(bArr5, i14, 1);
            q11.update(bArr4, i14, bArr4.length);
            q11.e(bArr6, i14, i16);
            byte[] X10 = org.bouncycastle.util.a.X(bArr6, i15, i15 + 32);
            System.arraycopy(bArr7, i14, bArr2, i14, i13);
            byte[] X11 = org.bouncycastle.util.a.X(X10, i14, i13);
            int i17 = this.f32343b;
            short[] sArr2 = new short[i17];
            int i18 = i15 - (i17 * 2);
            for (int i19 = i14; i19 < this.f32343b; i19++) {
                sArr2[i19] = p.d(bArr6, (i19 * 2) + i18, this.f32351j);
            }
            if (l(sArr2) != -1) {
                for (int i20 = i14; i20 < this.f32343b; i20++) {
                    p.f(bArr2, 40 + (i20 * 2), sArr2[i20]);
                }
                int i21 = this.f32344c;
                int[] iArr = new int[1 << i21];
                i10 = i18 - ((1 << i21) * 4);
                int i22 = 0;
                while (true) {
                    i11 = this.f32344c;
                    if (i22 >= (1 << i11)) {
                        break;
                    }
                    iArr[i22] = p.b(bArr6, (i22 * 4) + i10);
                    i22++;
                }
                sArr = new short[1 << i11];
                bArr3 = X10;
                q10 = q11;
                if (A(bArr, bArr2, iArr, sArr, jArr) != -1) {
                    break;
                }
            } else {
                bArr3 = X10;
                q10 = q11;
            }
            bArr7 = X11;
            bArr4 = bArr3;
            q11 = q10;
            i13 = 32;
            i14 = 0;
        }
        int i23 = this.f32346e;
        byte[] bArr8 = new byte[i23];
        e(bArr8, sArr, this.f32344c, 1 << r2);
        System.arraycopy(bArr8, 0, bArr2, this.f32345d + 40, i23);
        int i24 = this.f32342a;
        System.arraycopy(bArr6, i10 - (i24 / 8), bArr2, bArr2.length - (i24 / 8), i24 / 8);
        if (this.f32358q) {
            i12 = 32;
            j10 = jArr[0];
        } else {
            j10 = 4294967295L;
            i12 = 32;
        }
        p.e(bArr2, i12, j10);
    }

    public final int z(byte[][] bArr, short[] sArr, long[] jArr) {
        byte[] bArr2;
        long c10;
        long[] jArr2 = new long[64];
        int i10 = 32;
        long[] jArr3 = new long[32];
        byte[] bArr3 = new byte[9];
        int i11 = this.f32347f - 32;
        int i12 = i11 / 8;
        int i13 = i11 % 8;
        char c11 = 0;
        if (this.f32356o) {
            for (int i14 = 0; i14 < 32; i14++) {
                for (int i15 = 0; i15 < 9; i15++) {
                    bArr3[i15] = bArr[i11 + i14][i12 + i15];
                }
                int i16 = 0;
                while (i16 < 8) {
                    int i17 = i16 + 1;
                    bArr3[i16] = (byte) (((bArr3[i16] & 255) >> i13) | (bArr3[i17] << (8 - i13)));
                    i16 = i17;
                }
                jArr2[i14] = p.c(bArr3, 0);
            }
        } else {
            for (int i18 = 0; i18 < 32; i18++) {
                jArr2[i18] = p.c(bArr[i11 + i18], i12);
            }
        }
        long j10 = 0;
        jArr[0] = 0;
        int i19 = 0;
        while (i19 < 32) {
            long j11 = jArr2[i19];
            int i20 = i19 + 1;
            for (int i21 = i20; i21 < 32; i21++) {
                j11 |= jArr2[i21];
            }
            if (j11 == j10) {
                return -1;
            }
            int f10 = f(j11);
            long j12 = f10;
            jArr3[i19] = j12;
            jArr[c11] = jArr[c11] | (1 << ((int) j12));
            for (int i22 = i20; i22 < 32; i22++) {
                long j13 = jArr2[i19];
                jArr2[i19] = j13 ^ (jArr2[i22] & (((j13 >> f10) & 1) - 1));
            }
            int i23 = i20;
            while (i23 < 32) {
                long j14 = jArr2[i23];
                jArr2[i23] = j14 ^ (jArr2[i19] & (-((j14 >> f10) & 1)));
                i23++;
                f10 = f10;
                c11 = 0;
            }
            i19 = i20;
            j10 = 0;
        }
        int i24 = 0;
        while (i24 < 32) {
            int i25 = i24 + 1;
            int i26 = i25;
            while (i26 < 64) {
                long D10 = D((short) i26, (short) jArr3[i24]) & (sArr[r12] ^ sArr[r17]);
                sArr[i11 + i24] = (short) (sArr[r12] ^ D10);
                sArr[i11 + i26] = (short) (D10 ^ sArr[r17]);
                i26++;
                bArr3 = bArr3;
            }
            i24 = i25;
        }
        byte[] bArr4 = bArr3;
        int i27 = 0;
        while (i27 < this.f32347f) {
            if (this.f32356o) {
                for (int i28 = 0; i28 < 9; i28++) {
                    bArr4[i28] = bArr[i27][i12 + i28];
                }
                int i29 = 0;
                while (i29 < 8) {
                    int i30 = i29 + 1;
                    bArr4[i29] = (byte) (((bArr4[i29] & 255) >> i13) | (bArr4[i30] << (8 - i13)));
                    i29 = i30;
                }
                bArr2 = bArr4;
                c10 = p.c(bArr2, 0);
            } else {
                bArr2 = bArr4;
                c10 = p.c(bArr[i27], i12);
            }
            int i31 = 0;
            while (i31 < i10) {
                long j15 = jArr3[i31];
                long j16 = ((c10 >> i31) ^ (c10 >> ((int) j15))) & 1;
                c10 = (j16 << i31) ^ ((j16 << ((int) j15)) ^ c10);
                i31++;
                i10 = 32;
            }
            if (this.f32356o) {
                p.e(bArr2, 0, c10);
                byte[] bArr5 = bArr[i27];
                int i32 = i12 + 8;
                int i33 = 8 - i13;
                bArr5[i32] = (byte) ((((bArr5[i32] & 255) >>> i13) << i13) | ((bArr2[7] & 255) >>> i33));
                bArr5[i12] = (byte) (((bArr2[0] & 255) << i13) | (((bArr5[i12] & 255) << i33) >>> i33));
                for (int i34 = 7; i34 >= 1; i34--) {
                    bArr[i27][i12 + i34] = (byte) (((bArr2[i34] & 255) << i13) | ((bArr2[i34 - 1] & 255) >>> i33));
                }
            } else {
                p.e(bArr[i27], i12, c10);
            }
            i27++;
            bArr4 = bArr2;
            i10 = 32;
        }
        return 0;
    }
}
