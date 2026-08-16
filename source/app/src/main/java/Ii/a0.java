package Ii;

import Bi.EnumC2383o;

public final class a0 implements Bi.D, org.bouncycastle.util.n {

    public static final int f9665k = 32;

    public static final int f9666l = 64;

    public static final int f9667m = 64;

    public static final int f9668n = 285;

    public static final int f9669o = 10;

    public static final int[] f9670p = {24, 35, 198, 232, 135, 184, 1, 79, 54, 166, 210, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, 224, 215, 194, 46, 75, 254, 87, 21, 119, 55, 229, 159, 240, 74, 218, 88, 201, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, 203, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, 216, 251, 238, 124, 102, 221, 23, 71, 158, 202, 45, 191, 7, 173, 90, 131, 51, 99, 2, 170, 113, 200, 25, 73, 217, 242, 227, 91, 136, 154, 38, 50, 176, 233, 15, 213, 128, 190, 205, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, 180, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, 151, 0, 207, 43, 118, 130, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, 253, 77, 146, 117, 6, 138, 178, 230, 14, 31, 98, 212, 168, 150, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, 252, 4, 81, 153, 109, 13, 250, 223, 126, 36, 59, 171, 206, 17, 143, 78, 183, 235, 60, 129, 148, 247, 185, 19, 44, 211, 231, 110, 196, 3, 86, 68, 127, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, 204, 66, 152, 164, 40, 92, 248, 134};

    public static final long[] f9671q = new long[256];

    public static final long[] f9672r = new long[256];

    public static final long[] f9673s = new long[256];

    public static final long[] f9674t = new long[256];

    public static final long[] f9675u = new long[256];

    public static final long[] f9676v = new long[256];

    public static final long[] f9677w = new long[256];

    public static final long[] f9678x = new long[256];

    public static final short[] f9679y;

    public final long[] f9680a;

    public final EnumC2383o f9681b;

    public byte[] f9682c;

    public int f9683d;

    public short[] f9684e;

    public long[] f9685f;

    public long[] f9686g;

    public long[] f9687h;

    public long[] f9688i;

    public long[] f9689j;

    static {
        short[] sArr = new short[32];
        f9679y = sArr;
        sArr[31] = 8;
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = f9670p[i10];
            int l10 = l(i11);
            int l11 = l(l10);
            int i12 = l11 ^ i11;
            int l12 = l(l11);
            int i13 = l12 ^ i11;
            f9671q[i10] = m(i11, i11, l11, i11, l12, i12, l10, i13);
            f9672r[i10] = m(i13, i11, i11, l11, i11, l12, i12, l10);
            f9673s[i10] = m(l10, i13, i11, i11, l11, i11, l12, i12);
            f9674t[i10] = m(i12, l10, i13, i11, i11, l11, i11, l12);
            f9675u[i10] = m(l12, i12, l10, i13, i11, i11, l11, i11);
            f9676v[i10] = m(i11, l12, i12, l10, i13, i11, i11, l11);
            f9677w[i10] = m(l11, i11, l12, i12, l10, i13, i11, i11);
            f9678x[i10] = m(i11, l11, i11, l12, i12, l10, i13, i11);
        }
    }

    public a0() {
        this(EnumC2383o.ANY);
    }

    private void d() {
        byte[] a10 = a();
        byte[] bArr = this.f9682c;
        int i10 = this.f9683d;
        bArr[i10] = (byte) (bArr[i10] | 128);
        int i11 = i10 + 1;
        this.f9683d = i11;
        if (i11 == bArr.length) {
            o(bArr, 0);
        }
        if (this.f9683d > 32) {
            while (this.f9683d != 0) {
                update((byte) 0);
            }
        }
        while (this.f9683d <= 32) {
            update((byte) 0);
        }
        System.arraycopy(a10, 0, this.f9682c, 32, a10.length);
        o(this.f9682c, 0);
    }

    public static int l(int i10) {
        return ((-(i10 >>> 7)) & f9668n) ^ (i10 << 1);
    }

    public static long m(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        return (((((((i11 << 48) ^ (i10 << 56)) ^ (i12 << 40)) ^ (i13 << 32)) ^ (i14 << 24)) ^ (i15 << 16)) ^ (i16 << 8)) ^ i17;
    }

    public final byte[] a() {
        byte[] bArr = new byte[32];
        for (int i10 = 0; i10 < 32; i10++) {
            bArr[i10] = (byte) (this.f9684e[i10] & 255);
        }
        return bArr;
    }

    @Override
    public String b() {
        return "Whirlpool";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        d();
        org.bouncycastle.util.p.G(this.f9685f, bArr, i10);
        reset();
        return f();
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new a0(this);
    }

    @Override
    public int f() {
        return 64;
    }

    @Override
    public int i() {
        return 64;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        a0 a0Var = (a0) nVar;
        long[] jArr = a0Var.f9680a;
        long[] jArr2 = this.f9680a;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        byte[] bArr = a0Var.f9682c;
        byte[] bArr2 = this.f9682c;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f9683d = a0Var.f9683d;
        short[] sArr = a0Var.f9684e;
        short[] sArr2 = this.f9684e;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr3 = a0Var.f9685f;
        long[] jArr4 = this.f9685f;
        System.arraycopy(jArr3, 0, jArr4, 0, jArr4.length);
        long[] jArr5 = a0Var.f9686g;
        long[] jArr6 = this.f9686g;
        System.arraycopy(jArr5, 0, jArr6, 0, jArr6.length);
        long[] jArr7 = a0Var.f9687h;
        long[] jArr8 = this.f9687h;
        System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
        long[] jArr9 = a0Var.f9688i;
        long[] jArr10 = this.f9688i;
        System.arraycopy(jArr9, 0, jArr10, 0, jArr10.length);
        long[] jArr11 = a0Var.f9689j;
        long[] jArr12 = this.f9689j;
        System.arraycopy(jArr11, 0, jArr12, 0, jArr12.length);
    }

    public final void k() {
        int i10 = 0;
        for (int length = this.f9684e.length - 1; length >= 0; length--) {
            short[] sArr = this.f9684e;
            int i11 = (sArr[length] & 255) + f9679y[length] + i10;
            i10 = i11 >>> 8;
            sArr[length] = (short) (i11 & 255);
        }
    }

    public void n() {
        long[] jArr;
        for (int i10 = 0; i10 < 8; i10++) {
            long[] jArr2 = this.f9689j;
            long j10 = this.f9688i[i10];
            long[] jArr3 = this.f9686g;
            long j11 = this.f9685f[i10];
            jArr3[i10] = j11;
            jArr2[i10] = j10 ^ j11;
        }
        int i11 = 1;
        while (i11 <= 10) {
            int i12 = 0;
            while (i12 < 8) {
                long[] jArr4 = this.f9687h;
                jArr4[i12] = 0;
                long[] jArr5 = f9671q;
                long[] jArr6 = this.f9686g;
                long j12 = jArr5[((int) (jArr6[i12 & 7] >>> 56)) & 255];
                jArr4[i12] = j12;
                long j13 = f9672r[((int) (jArr6[(i12 - 1) & 7] >>> 48)) & 255] ^ j12;
                jArr4[i12] = j13;
                long j14 = j13 ^ f9673s[((int) (jArr6[(i12 - 2) & 7] >>> 40)) & 255];
                jArr4[i12] = j14;
                long j15 = j14 ^ f9674t[((int) (jArr6[(i12 - 3) & 7] >>> 32)) & 255];
                jArr4[i12] = j15;
                long j16 = j15 ^ f9675u[((int) (jArr6[(i12 - 4) & 7] >>> 24)) & 255];
                jArr4[i12] = j16;
                long j17 = j16 ^ f9676v[((int) (jArr6[(i12 - 5) & 7] >>> 16)) & 255];
                jArr4[i12] = j17;
                long j18 = j17 ^ f9677w[((int) (jArr6[(i12 - 6) & 7] >>> 8)) & 255];
                jArr4[i12] = j18;
                jArr4[i12] = j18 ^ f9678x[((int) jArr6[(i12 - 7) & 7]) & 255];
                i12++;
                i11 = i11;
            }
            int i13 = i11;
            long[] jArr7 = this.f9687h;
            long[] jArr8 = this.f9686g;
            System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
            long[] jArr9 = this.f9686g;
            jArr9[0] = jArr9[0] ^ this.f9680a[i13];
            int i14 = 0;
            while (true) {
                jArr = this.f9687h;
                if (i14 < 8) {
                    long j19 = this.f9686g[i14];
                    jArr[i14] = j19;
                    long[] jArr10 = f9671q;
                    long[] jArr11 = this.f9689j;
                    long j20 = jArr10[((int) (jArr11[i14 & 7] >>> 56)) & 255] ^ j19;
                    jArr[i14] = j20;
                    long j21 = j20 ^ f9672r[((int) (jArr11[(i14 - 1) & 7] >>> 48)) & 255];
                    jArr[i14] = j21;
                    long j22 = j21 ^ f9673s[((int) (jArr11[(i14 - 2) & 7] >>> 40)) & 255];
                    jArr[i14] = j22;
                    long j23 = j22 ^ f9674t[((int) (jArr11[(i14 - 3) & 7] >>> 32)) & 255];
                    jArr[i14] = j23;
                    long j24 = j23 ^ f9675u[((int) (jArr11[(i14 - 4) & 7] >>> 24)) & 255];
                    jArr[i14] = j24;
                    long j25 = j24 ^ f9676v[((int) (jArr11[(i14 - 5) & 7] >>> 16)) & 255];
                    jArr[i14] = j25;
                    long j26 = j25 ^ f9677w[((int) (jArr11[(i14 - 6) & 7] >>> 8)) & 255];
                    jArr[i14] = j26;
                    jArr[i14] = j26 ^ f9678x[((int) jArr11[(i14 - 7) & 7]) & 255];
                    i14++;
                }
            }
            long[] jArr12 = this.f9689j;
            System.arraycopy(jArr, 0, jArr12, 0, jArr12.length);
            i11 = i13 + 1;
        }
        for (int i15 = 0; i15 < 8; i15++) {
            long[] jArr13 = this.f9685f;
            jArr13[i15] = jArr13[i15] ^ (this.f9689j[i15] ^ this.f9688i[i15]);
        }
    }

    public final void o(byte[] bArr, int i10) {
        org.bouncycastle.util.p.e(this.f9682c, 0, this.f9688i);
        n();
        this.f9683d = 0;
        org.bouncycastle.util.a.e0(this.f9682c, (byte) 0);
    }

    @Override
    public void reset() {
        this.f9683d = 0;
        org.bouncycastle.util.a.p0(this.f9684e, (short) 0);
        org.bouncycastle.util.a.e0(this.f9682c, (byte) 0);
        org.bouncycastle.util.a.l0(this.f9685f, 0L);
        org.bouncycastle.util.a.l0(this.f9686g, 0L);
        org.bouncycastle.util.a.l0(this.f9687h, 0L);
        org.bouncycastle.util.a.l0(this.f9688i, 0L);
        org.bouncycastle.util.a.l0(this.f9689j, 0L);
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9682c;
        int i10 = this.f9683d;
        bArr[i10] = b10;
        int i11 = i10 + 1;
        this.f9683d = i11;
        if (i11 == bArr.length) {
            o(bArr, 0);
        }
        k();
    }

    public a0(EnumC2383o enumC2383o) {
        long[] jArr = new long[11];
        this.f9680a = jArr;
        this.f9682c = new byte[64];
        this.f9683d = 0;
        this.f9684e = new short[32];
        this.f9685f = new long[8];
        this.f9686g = new long[8];
        this.f9687h = new long[8];
        this.f9688i = new long[8];
        this.f9689j = new long[8];
        jArr[0] = 0;
        for (int i10 = 1; i10 <= 10; i10++) {
            int i11 = (i10 - 1) * 8;
            this.f9680a[i10] = (((((((f9671q[i11] & (-72057594037927936L)) ^ (f9672r[i11 + 1] & 71776119061217280L)) ^ (f9673s[i11 + 2] & 280375465082880L)) ^ (f9674t[i11 + 3] & 1095216660480L)) ^ (f9675u[i11 + 4] & 4278190080L)) ^ (f9676v[i11 + 5] & 16711680)) ^ (f9677w[i11 + 6] & 65280)) ^ (f9678x[i11 + 7] & 255);
        }
        this.f9681b = enumC2383o;
        Bi.r.a(Z.a(this, f(), enumC2383o));
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        while (i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
    }

    public a0(a0 a0Var) {
        this.f9680a = new long[11];
        this.f9682c = new byte[64];
        this.f9683d = 0;
        this.f9684e = new short[32];
        this.f9685f = new long[8];
        this.f9686g = new long[8];
        this.f9687h = new long[8];
        this.f9688i = new long[8];
        this.f9689j = new long[8];
        EnumC2383o enumC2383o = a0Var.f9681b;
        this.f9681b = enumC2383o;
        j(a0Var);
        Bi.r.a(Z.a(this, f(), enumC2383o));
    }
}
