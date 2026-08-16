package pk;

import sk.AbstractC15323i;
import sk.AbstractC15329o;

public abstract class AbstractC15009d {

    public static final int f104106a = 8;

    public static final int f104107b = 32;

    public static final long f104108c = 255;

    public static final long f104109d = 268435455;

    public static final long f104110e = 4294967295L;

    public static final int f104111f = 254;

    public static final int[] f104112g = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};

    public static final int[] f104113h = {-1424848535, -487721339, 580428573, 1745064566, -770181698, 1036971123, 461123738, -1582065343, 1268693629, -889041821, -731974758, 43769659, 0, 0, 0, 16777216};

    public static final int f104114i = -50998291;

    public static final int f104115j = 19280294;

    public static final int f104116k = 127719000;

    public static final int f104117l = -6428113;

    public static final int f104118m = 5343;

    public static boolean a(byte[] bArr, int[] iArr) {
        b(bArr, iArr);
        return !AbstractC15323i.x(iArr, f104112g);
    }

    public static void b(byte[] bArr, int[] iArr) {
        AbstractC15006a.d(bArr, 0, iArr, 0, 8);
    }

    public static void c(int i10, byte[] bArr) {
        AbstractC15012g.a(f104112g, i10, bArr);
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[12];
        AbstractC15323i.E(iArr, iArr2, iArr4);
        if (iArr2[3] < 0) {
            AbstractC15323i.e(f104112g, 0, iArr4, 4, 0);
            AbstractC15323i.V(iArr, 0, iArr4, 4, 0);
        }
        byte[] bArr = new byte[48];
        AbstractC15006a.g(iArr4, 0, 12, bArr, 0);
        b(e(bArr), iArr3);
    }

    public static byte[] e(byte[] bArr) {
        long b10 = AbstractC15006a.b(bArr, 32) << 4;
        long j10 = b10 & 4294967295L;
        long c10 = AbstractC15006a.c(bArr, 35);
        long j11 = c10 & 4294967295L;
        long b11 = AbstractC15006a.b(bArr, 39) << 4;
        long j12 = b11 & 4294967295L;
        long c11 = AbstractC15006a.c(bArr, 42);
        long a10 = ((AbstractC15006a.a(bArr, 46) << 4) & 4294967295L) + ((c11 & 4294967295L) >> 28);
        long j13 = (c11 & 268435455) + (j12 >> 28);
        long c12 = ((AbstractC15006a.c(bArr, 21) & 4294967295L) - (a10 * 127719000)) - (j13 * (-6428113));
        long b12 = (((AbstractC15006a.b(bArr, 25) << 4) & 4294967295L) - (a10 * (-6428113))) - (j13 * 5343);
        long j14 = (b11 & 268435455) + (j11 >> 28);
        long b13 = (((AbstractC15006a.b(bArr, 11) << 4) & 4294967295L) - (j13 * (-50998291))) - (j14 * 19280294);
        long c13 = (((AbstractC15006a.c(bArr, 14) & 4294967295L) - (a10 * (-50998291))) - (j13 * 19280294)) - (j14 * 127719000);
        long b14 = ((((AbstractC15006a.b(bArr, 18) << 4) & 4294967295L) - (a10 * 19280294)) - (j13 * 127719000)) - (j14 * (-6428113));
        long j15 = (c10 & 268435455) + (j10 >> 28);
        long b15 = ((AbstractC15006a.b(bArr, 4) << 4) & 4294967295L) - (j15 * (-50998291));
        long c14 = ((AbstractC15006a.c(bArr, 7) & 4294967295L) - (j14 * (-50998291))) - (j15 * 19280294);
        long j16 = b13 - (j15 * 127719000);
        long j17 = c13 - (j15 * (-6428113));
        long j18 = b14 - (j15 * 5343);
        long c15 = ((AbstractC15006a.c(bArr, 28) & 4294967295L) - (a10 * 5343)) + (b12 >> 28);
        long j19 = (b10 & 268435455) + (c15 >> 28);
        long j20 = c15 & 268435455;
        long j21 = j20 >>> 27;
        long j22 = j19 + j21;
        long c16 = (AbstractC15006a.c(bArr, 0) & 4294967295L) - (j22 * (-50998291));
        long j23 = (b15 - (j22 * 19280294)) + (c16 >> 28);
        long j24 = (c14 - (j22 * 127719000)) + (j23 >> 28);
        long j25 = (j16 - (j22 * (-6428113))) + (j24 >> 28);
        long j26 = (j17 - (j22 * 5343)) + (j25 >> 28);
        long j27 = j18 + (j26 >> 28);
        long j28 = (c12 - (j14 * 5343)) + (j27 >> 28);
        long j29 = (b12 & 268435455) + (j28 >> 28);
        long j30 = j20 + (j29 >> 28);
        long j31 = (j30 >> 28) - j21;
        long j32 = (c16 & 268435455) + (j31 & (-50998291));
        long j33 = (j23 & 268435455) + (j31 & 19280294) + (j32 >> 28);
        long j34 = (j24 & 268435455) + (j31 & 127719000) + (j33 >> 28);
        long j35 = (j25 & 268435455) + (j31 & (-6428113)) + (j34 >> 28);
        long j36 = (j26 & 268435455) + (j31 & 5343) + (j35 >> 28);
        long j37 = (j27 & 268435455) + (j36 >> 28);
        long j38 = (j28 & 268435455) + (j37 >> 28);
        long j39 = (j29 & 268435455) + (j38 >> 28);
        byte[] bArr2 = new byte[64];
        AbstractC15006a.h(((j33 & 268435455) << 28) | (j32 & 268435455), bArr2, 0);
        AbstractC15006a.h((j34 & 268435455) | ((j35 & 268435455) << 28), bArr2, 7);
        AbstractC15006a.h(((j37 & 268435455) << 28) | (j36 & 268435455), bArr2, 14);
        AbstractC15006a.h(((j39 & 268435455) << 28) | (j38 & 268435455), bArr2, 21);
        AbstractC15006a.f((int) ((j30 & 268435455) + (j39 >> 28)), bArr2, 28);
        return bArr2;
    }

    public static byte[] f(byte[] bArr) {
        long c10 = AbstractC15006a.c(bArr, 49);
        long j10 = c10 & 4294967295L;
        long c11 = AbstractC15006a.c(bArr, 56);
        long j11 = c11 & 4294967295L;
        long j12 = bArr[63] & 255;
        long b10 = ((AbstractC15006a.b(bArr, 60) << 4) & 4294967295L) + (j11 >> 28);
        long j13 = c11 & 268435455;
        long c12 = (AbstractC15006a.c(bArr, 28) & 4294967295L) - (b10 * (-50998291));
        long b11 = (((AbstractC15006a.b(bArr, 32) << 4) & 4294967295L) - (j12 * (-50998291))) - (b10 * 19280294);
        long c13 = ((AbstractC15006a.c(bArr, 42) & 4294967295L) - (j12 * (-6428113))) - (b10 * 5343);
        long b12 = ((((AbstractC15006a.b(bArr, 39) << 4) & 4294967295L) - (j12 * 127719000)) - (b10 * (-6428113))) - (j13 * 5343);
        long b13 = ((AbstractC15006a.b(bArr, 53) << 4) & 4294967295L) + (j10 >> 28);
        long j14 = c10 & 268435455;
        long c14 = ((((AbstractC15006a.c(bArr, 35) & 4294967295L) - (j12 * 19280294)) - (b10 * 127719000)) - (j13 * (-6428113))) - (b13 * 5343);
        long b14 = ((((AbstractC15006a.b(bArr, 25) << 4) & 4294967295L) - (j13 * (-50998291))) - (b13 * 19280294)) - (j14 * 127719000);
        long j15 = ((b11 - (j13 * 127719000)) - (b13 * (-6428113))) - (j14 * 5343);
        long b15 = (((AbstractC15006a.b(bArr, 46) << 4) & 4294967295L) - (j12 * 5343)) + (c13 >> 28);
        long j16 = (c13 & 268435455) + (b12 >> 28);
        long b16 = ((AbstractC15006a.b(bArr, 11) << 4) & 4294967295L) - (j16 * (-50998291));
        long c15 = ((AbstractC15006a.c(bArr, 14) & 4294967295L) - (b15 * (-50998291))) - (j16 * 19280294);
        long b17 = ((((AbstractC15006a.b(bArr, 18) << 4) & 4294967295L) - (j14 * (-50998291))) - (b15 * 19280294)) - (j16 * 127719000);
        long c16 = ((((AbstractC15006a.c(bArr, 21) & 4294967295L) - (b13 * (-50998291))) - (j14 * 19280294)) - (b15 * 127719000)) - (j16 * (-6428113));
        long j17 = (b14 - (b15 * (-6428113))) - (j16 * 5343);
        long j18 = (b12 & 268435455) + (c14 >> 28);
        long j19 = c14 & 268435455;
        long c17 = (AbstractC15006a.c(bArr, 7) & 4294967295L) - (j18 * (-50998291));
        long j20 = b16 - (j18 * 19280294);
        long j21 = c15 - (j18 * 127719000);
        long j22 = b17 - (j18 * (-6428113));
        long j23 = c16 - (j18 * 5343);
        long j24 = j19 + (j15 >> 28);
        long j25 = j15 & 268435455;
        long b18 = ((AbstractC15006a.b(bArr, 4) << 4) & 4294967295L) - (j24 * (-50998291));
        long j26 = c17 - (j24 * 19280294);
        long j27 = j20 - (j24 * 127719000);
        long j28 = j21 - (j24 * (-6428113));
        long j29 = j22 - (j24 * 5343);
        long j30 = ((((c12 - (j13 * 19280294)) - (b13 * 127719000)) - (j14 * (-6428113))) - (b15 * 5343)) + (j17 >> 28);
        long j31 = j30 & 268435455;
        long j32 = j31 >>> 27;
        long j33 = j25 + (j30 >> 28) + j32;
        long c18 = (AbstractC15006a.c(bArr, 0) & 4294967295L) - (j33 * (-50998291));
        long j34 = (b18 - (j33 * 19280294)) + (c18 >> 28);
        long j35 = c18 & 268435455;
        long j36 = (j26 - (j33 * 127719000)) + (j34 >> 28);
        long j37 = (j27 - (j33 * (-6428113))) + (j36 >> 28);
        long j38 = (j28 - (j33 * 5343)) + (j37 >> 28);
        long j39 = j29 + (j38 >> 28);
        long j40 = j38 & 268435455;
        long j41 = j23 + (j39 >> 28);
        long j42 = (j17 & 268435455) + (j41 >> 28);
        long j43 = j31 + (j42 >> 28);
        long j44 = (j43 >> 28) - j32;
        long j45 = j35 + (j44 & (-50998291));
        long j46 = (j34 & 268435455) + (j44 & 19280294) + (j45 >> 28);
        long j47 = (j36 & 268435455) + (j44 & 127719000) + (j46 >> 28);
        long j48 = (j37 & 268435455) + (j44 & (-6428113)) + (j47 >> 28);
        long j49 = j40 + (j44 & 5343) + (j48 >> 28);
        long j50 = (j39 & 268435455) + (j49 >> 28);
        long j51 = (j41 & 268435455) + (j50 >> 28);
        long j52 = (j42 & 268435455) + (j51 >> 28);
        byte[] bArr2 = new byte[32];
        AbstractC15006a.h((j45 & 268435455) | ((j46 & 268435455) << 28), bArr2, 0);
        AbstractC15006a.h(((j48 & 268435455) << 28) | (j47 & 268435455), bArr2, 7);
        AbstractC15006a.h((j49 & 268435455) | ((j50 & 268435455) << 28), bArr2, 14);
        AbstractC15006a.h((j51 & 268435455) | ((j52 & 268435455) << 28), bArr2, 21);
        AbstractC15006a.f((int) ((j43 & 268435455) + (j52 >> 28)), bArr2, 28);
        return bArr2;
    }

    public static boolean g(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10;
        int i11;
        int[] iArr4;
        int[] iArr5 = new int[16];
        System.arraycopy(f104113h, 0, iArr5, 0, 16);
        int[] iArr6 = new int[16];
        AbstractC15323i.Q(iArr, iArr6);
        iArr6[0] = iArr6[0] + 1;
        int[] iArr7 = new int[16];
        int[] iArr8 = f104112g;
        AbstractC15323i.D(iArr8, iArr, iArr7);
        int[] iArr9 = new int[16];
        int[] iArr10 = new int[4];
        System.arraycopy(iArr8, 0, iArr10, 0, 4);
        int[] iArr11 = new int[4];
        System.arraycopy(iArr, 0, iArr11, 0, 4);
        int[] iArr12 = new int[4];
        iArr12[0] = 1;
        int[] iArr13 = new int[4];
        int[] iArr14 = iArr10;
        int[] iArr15 = iArr11;
        int i12 = 15;
        int i13 = 1016;
        int d10 = AbstractC15011f.d(15, iArr6);
        while (d10 > 254) {
            int i14 = i13 - 1;
            if (i14 < 0) {
                return false;
            }
            int c10 = AbstractC15011f.c(i12, iArr7) - d10;
            int i15 = c10 & (~(c10 >> 31));
            if (iArr7[i12] < 0) {
                i10 = d10;
                AbstractC15011f.a(i12, i15, iArr5, iArr6, iArr7, iArr9);
                int[] iArr16 = iArr15;
                AbstractC15011f.b(3, i15, iArr14, iArr13, iArr16, iArr12);
                iArr4 = iArr16;
                i11 = i12;
            } else {
                i10 = d10;
                AbstractC15011f.f(i12, i15, iArr5, iArr6, iArr7, iArr9);
                i11 = i12;
                iArr4 = iArr15;
                AbstractC15011f.g(3, i15, iArr14, iArr13, iArr4, iArr12);
            }
            if (AbstractC15011f.e(i11, iArr5, iArr6)) {
                int i16 = i10 >>> 5;
                i12 = i16;
                d10 = AbstractC15011f.d(i16, iArr5);
                iArr15 = iArr14;
                iArr14 = iArr4;
                int[] iArr17 = iArr13;
                iArr13 = iArr12;
                iArr12 = iArr17;
                int[] iArr18 = iArr6;
                iArr6 = iArr5;
                iArr5 = iArr18;
            } else {
                iArr15 = iArr4;
                i12 = i11;
                d10 = i10;
            }
            i13 = i14;
        }
        System.arraycopy(iArr15, 0, iArr2, 0, 4);
        System.arraycopy(iArr12, 0, iArr3, 0, 4);
        return true;
    }

    public static void h(int i10, int[] iArr) {
        AbstractC15329o.u(8, (~iArr[0]) & 1, f104112g, iArr);
        AbstractC15329o.t0(8, iArr, 1);
    }
}
