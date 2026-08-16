package Ii;

import Bi.EnumC2383o;
import org.bouncycastle.crypto.OutputLengthException;

public class C2645c implements Bi.D {

    public static final long[] f9701v = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};

    public static final byte[][] f9702w = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}, new byte[]{11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13}, new byte[]{2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9}, new byte[]{12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11}, new byte[]{13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10}, new byte[]{6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0}, new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}};

    public static int f9703x = 12;

    public static final int f9704y = 128;

    public int f9705a;

    public int f9706b;

    public byte[] f9707c;

    public byte[] f9708d;

    public byte[] f9709e;

    public int f9710f;

    public int f9711g;

    public int f9712h;

    public long f9713i;

    public int f9714j;

    public int f9715k;

    public boolean f9716l;

    public byte[] f9717m;

    public int f9718n;

    public long[] f9719o;

    public long[] f9720p;

    public long f9721q;

    public long f9722r;

    public long f9723s;

    public long f9724t;

    public final EnumC2383o f9725u;

    public C2645c() {
        this(512, EnumC2383o.ANY);
    }

    private void k() {
        if (this.f9720p == null) {
            this.f9720p = r1;
            long[] jArr = f9701v;
            long j10 = jArr[4];
            long[] jArr2 = {jArr[0] ^ ((this.f9705a | (this.f9706b << 8)) | (((this.f9710f << 16) | (this.f9711g << 24)) | (this.f9712h << 32))), jArr[1] ^ this.f9713i, jArr[2] ^ (this.f9714j | (this.f9715k << 8)), jArr[3], j10, jArr[5]};
            byte[] bArr = this.f9707c;
            if (bArr != null) {
                jArr2[4] = j10 ^ org.bouncycastle.util.p.x(bArr, 0);
                long[] jArr3 = this.f9720p;
                jArr3[5] = jArr3[5] ^ org.bouncycastle.util.p.x(this.f9707c, 8);
            }
            long[] jArr4 = this.f9720p;
            long j11 = jArr[6];
            jArr4[6] = j11;
            jArr4[7] = jArr[7];
            byte[] bArr2 = this.f9708d;
            if (bArr2 != null) {
                jArr4[6] = org.bouncycastle.util.p.x(bArr2, 0) ^ j11;
                long[] jArr5 = this.f9720p;
                jArr5[7] = jArr5[7] ^ org.bouncycastle.util.p.x(this.f9708d, 8);
            }
        }
    }

    public final void a(long j10, long j11, int i10, int i11, int i12, int i13) {
        long[] jArr = this.f9719o;
        long j12 = jArr[i10] + jArr[i11] + j10;
        jArr[i10] = j12;
        jArr[i13] = org.bouncycastle.util.m.h(jArr[i13] ^ j12, 32);
        long[] jArr2 = this.f9719o;
        long j13 = jArr2[i12] + jArr2[i13];
        jArr2[i12] = j13;
        jArr2[i11] = org.bouncycastle.util.m.h(j13 ^ jArr2[i11], 24);
        long[] jArr3 = this.f9719o;
        long j14 = jArr3[i10] + jArr3[i11] + j11;
        jArr3[i10] = j14;
        jArr3[i13] = org.bouncycastle.util.m.h(jArr3[i13] ^ j14, 16);
        long[] jArr4 = this.f9719o;
        long j15 = jArr4[i12] + jArr4[i13];
        jArr4[i12] = j15;
        jArr4[i11] = org.bouncycastle.util.m.h(j15 ^ jArr4[i11], 63);
    }

    @Override
    public String b() {
        return "BLAKE2b";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (i10 > bArr.length - this.f9705a) {
            throw new OutputLengthException("output buffer too short");
        }
        this.f9723s = -1L;
        if (this.f9716l) {
            this.f9724t = -1L;
        }
        long j10 = this.f9721q;
        int i11 = this.f9718n;
        long j11 = j10 + i11;
        this.f9721q = j11;
        if (i11 > 0 && j11 == 0) {
            this.f9722r++;
        }
        j(this.f9717m, 0);
        org.bouncycastle.util.a.e0(this.f9717m, (byte) 0);
        org.bouncycastle.util.a.l0(this.f9719o, 0L);
        int i12 = this.f9705a;
        int i13 = i12 >>> 3;
        int i14 = i12 & 7;
        org.bouncycastle.util.p.K(this.f9720p, 0, i13, bArr, i10);
        if (i14 > 0) {
            byte[] bArr2 = new byte[8];
            org.bouncycastle.util.p.J(this.f9720p[i13], bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, (i10 + this.f9705a) - i14, i14);
        }
        org.bouncycastle.util.a.l0(this.f9720p, 0L);
        reset();
        return this.f9705a;
    }

    public void d() {
        byte[] bArr = this.f9709e;
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
            org.bouncycastle.util.a.e0(this.f9717m, (byte) 0);
        }
    }

    @Override
    public int f() {
        return this.f9705a;
    }

    public void g() {
        byte[] bArr = this.f9707c;
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
        }
    }

    @Override
    public int i() {
        return 128;
    }

    public final void j(byte[] bArr, int i10) {
        l();
        long[] jArr = new long[16];
        org.bouncycastle.util.p.y(bArr, i10, jArr);
        int i11 = 0;
        for (int i12 = 0; i12 < f9703x; i12++) {
            byte[][] bArr2 = f9702w;
            byte[] bArr3 = bArr2[i12];
            a(jArr[bArr3[0]], jArr[bArr3[1]], 0, 4, 8, 12);
            byte[] bArr4 = bArr2[i12];
            a(jArr[bArr4[2]], jArr[bArr4[3]], 1, 5, 9, 13);
            byte[] bArr5 = bArr2[i12];
            a(jArr[bArr5[4]], jArr[bArr5[5]], 2, 6, 10, 14);
            byte[] bArr6 = bArr2[i12];
            a(jArr[bArr6[6]], jArr[bArr6[7]], 3, 7, 11, 15);
            byte[] bArr7 = bArr2[i12];
            a(jArr[bArr7[8]], jArr[bArr7[9]], 0, 5, 10, 15);
            byte[] bArr8 = bArr2[i12];
            a(jArr[bArr8[10]], jArr[bArr8[11]], 1, 6, 11, 12);
            byte[] bArr9 = bArr2[i12];
            a(jArr[bArr9[12]], jArr[bArr9[13]], 2, 7, 8, 13);
            byte[] bArr10 = bArr2[i12];
            a(jArr[bArr10[14]], jArr[bArr10[15]], 3, 4, 9, 14);
        }
        while (true) {
            long[] jArr2 = this.f9720p;
            if (i11 >= jArr2.length) {
                return;
            }
            long j10 = jArr2[i11];
            long[] jArr3 = this.f9719o;
            jArr2[i11] = (j10 ^ jArr3[i11]) ^ jArr3[i11 + 8];
            i11++;
        }
    }

    public final void l() {
        long[] jArr = this.f9720p;
        System.arraycopy(jArr, 0, this.f9719o, 0, jArr.length);
        long[] jArr2 = f9701v;
        System.arraycopy(jArr2, 0, this.f9719o, this.f9720p.length, 4);
        long[] jArr3 = this.f9719o;
        jArr3[12] = this.f9721q ^ jArr2[4];
        jArr3[13] = this.f9722r ^ jArr2[5];
        jArr3[14] = this.f9723s ^ jArr2[6];
        jArr3[15] = this.f9724t ^ jArr2[7];
    }

    public void m() {
        this.f9716l = true;
    }

    @Override
    public void reset() {
        this.f9718n = 0;
        this.f9723s = 0L;
        this.f9724t = 0L;
        this.f9721q = 0L;
        this.f9722r = 0L;
        this.f9716l = false;
        this.f9720p = null;
        org.bouncycastle.util.a.e0(this.f9717m, (byte) 0);
        byte[] bArr = this.f9709e;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.f9717m, 0, bArr.length);
            this.f9718n = 128;
        }
        k();
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f9718n;
        if (128 - i10 != 0) {
            this.f9717m[i10] = b10;
            this.f9718n = i10 + 1;
            return;
        }
        long j10 = this.f9721q + 128;
        this.f9721q = j10;
        if (j10 == 0) {
            this.f9722r++;
        }
        j(this.f9717m, 0);
        org.bouncycastle.util.a.e0(this.f9717m, (byte) 0);
        this.f9717m[0] = b10;
        this.f9718n = 1;
    }

    public C2645c(int i10) {
        this(i10, EnumC2383o.ANY);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12;
        if (bArr == null || i11 == 0) {
            return;
        }
        int i13 = this.f9718n;
        if (i13 != 0) {
            i12 = 128 - i13;
            if (i12 >= i11) {
                System.arraycopy(bArr, i10, this.f9717m, i13, i11);
                this.f9718n += i11;
            }
            System.arraycopy(bArr, i10, this.f9717m, i13, i12);
            long j10 = this.f9721q + 128;
            this.f9721q = j10;
            if (j10 == 0) {
                this.f9722r++;
            }
            j(this.f9717m, 0);
            this.f9718n = 0;
            org.bouncycastle.util.a.e0(this.f9717m, (byte) 0);
        } else {
            i12 = 0;
        }
        int i14 = i11 + i10;
        int i15 = i14 - 128;
        int i16 = i10 + i12;
        while (i16 < i15) {
            long j11 = this.f9721q + 128;
            this.f9721q = j11;
            if (j11 == 0) {
                this.f9722r++;
            }
            j(bArr, i16);
            i16 += 128;
        }
        i11 = i14 - i16;
        System.arraycopy(bArr, i16, this.f9717m, 0, i11);
        this.f9718n += i11;
    }

    public C2645c(int i10, EnumC2383o enumC2383o) {
        this.f9705a = 64;
        this.f9706b = 0;
        this.f9707c = null;
        this.f9708d = null;
        this.f9709e = null;
        this.f9710f = 1;
        this.f9711g = 1;
        this.f9712h = 0;
        this.f9713i = 0L;
        this.f9714j = 0;
        this.f9715k = 0;
        this.f9716l = false;
        this.f9717m = null;
        this.f9718n = 0;
        this.f9719o = new long[16];
        this.f9720p = null;
        this.f9721q = 0L;
        this.f9722r = 0L;
        this.f9723s = 0L;
        this.f9724t = 0L;
        this.f9725u = enumC2383o;
        if (i10 < 8 || i10 > 512 || i10 % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2b digest bit length must be a multiple of 8 and not greater than 512");
        }
        this.f9717m = new byte[128];
        this.f9706b = 0;
        this.f9705a = i10 / 8;
        Bi.r.a(Z.a(this, i10, enumC2383o));
        k();
    }

    public C2645c(C2645c c2645c) {
        this.f9705a = 64;
        this.f9706b = 0;
        this.f9707c = null;
        this.f9708d = null;
        this.f9709e = null;
        this.f9710f = 1;
        this.f9711g = 1;
        this.f9712h = 0;
        this.f9713i = 0L;
        this.f9714j = 0;
        this.f9715k = 0;
        this.f9716l = false;
        this.f9717m = null;
        this.f9718n = 0;
        this.f9719o = new long[16];
        this.f9720p = null;
        this.f9721q = 0L;
        this.f9722r = 0L;
        this.f9723s = 0L;
        this.f9724t = 0L;
        this.f9718n = c2645c.f9718n;
        this.f9717m = org.bouncycastle.util.a.p(c2645c.f9717m);
        this.f9706b = c2645c.f9706b;
        this.f9709e = org.bouncycastle.util.a.p(c2645c.f9709e);
        this.f9705a = c2645c.f9705a;
        this.f9720p = org.bouncycastle.util.a.t(c2645c.f9720p);
        this.f9708d = org.bouncycastle.util.a.p(c2645c.f9708d);
        this.f9707c = org.bouncycastle.util.a.p(c2645c.f9707c);
        this.f9721q = c2645c.f9721q;
        this.f9722r = c2645c.f9722r;
        this.f9723s = c2645c.f9723s;
        this.f9725u = c2645c.f9725u;
    }

    public C2645c(byte[] bArr) {
        this(bArr, EnumC2383o.ANY);
    }

    public C2645c(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3) {
        this(bArr, i10, bArr2, bArr3, EnumC2383o.ANY);
    }

    public C2645c(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, EnumC2383o enumC2383o) {
        this.f9705a = 64;
        this.f9706b = 0;
        this.f9707c = null;
        this.f9708d = null;
        this.f9709e = null;
        this.f9710f = 1;
        this.f9711g = 1;
        this.f9712h = 0;
        this.f9713i = 0L;
        this.f9714j = 0;
        this.f9715k = 0;
        this.f9716l = false;
        this.f9718n = 0;
        this.f9719o = new long[16];
        this.f9720p = null;
        this.f9721q = 0L;
        this.f9722r = 0L;
        this.f9723s = 0L;
        this.f9724t = 0L;
        this.f9725u = enumC2383o;
        this.f9717m = new byte[128];
        if (i10 < 1 || i10 > 64) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 64)");
        }
        this.f9705a = i10;
        if (bArr2 != null) {
            if (bArr2.length != 16) {
                throw new IllegalArgumentException("salt length must be exactly 16 bytes");
            }
            byte[] bArr4 = new byte[16];
            this.f9707c = bArr4;
            System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        }
        if (bArr3 != null) {
            if (bArr3.length != 16) {
                throw new IllegalArgumentException("personalization length must be exactly 16 bytes");
            }
            byte[] bArr5 = new byte[16];
            this.f9708d = bArr5;
            System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
        }
        if (bArr != null) {
            byte[] bArr6 = new byte[bArr.length];
            this.f9709e = bArr6;
            System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.f9706b = bArr.length;
            System.arraycopy(bArr, 0, this.f9717m, 0, bArr.length);
            this.f9718n = 128;
        }
        Bi.r.a(Z.a(this, i10 * 8, enumC2383o));
        k();
    }

    public C2645c(byte[] bArr, EnumC2383o enumC2383o) {
        this.f9705a = 64;
        this.f9706b = 0;
        this.f9707c = null;
        this.f9708d = null;
        this.f9709e = null;
        this.f9710f = 1;
        this.f9711g = 1;
        this.f9712h = 0;
        this.f9713i = 0L;
        this.f9714j = 0;
        this.f9715k = 0;
        this.f9716l = false;
        this.f9718n = 0;
        this.f9719o = new long[16];
        this.f9720p = null;
        this.f9721q = 0L;
        this.f9722r = 0L;
        this.f9723s = 0L;
        this.f9724t = 0L;
        this.f9717m = new byte[128];
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.f9709e = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.f9706b = bArr.length;
            System.arraycopy(bArr, 0, this.f9717m, 0, bArr.length);
            this.f9718n = 128;
        }
        this.f9725u = enumC2383o;
        this.f9705a = 64;
        Bi.r.a(Z.a(this, 64 * 8, enumC2383o));
        k();
    }

    public C2645c(byte[] bArr, byte[] bArr2) {
        this.f9705a = 64;
        this.f9706b = 0;
        this.f9707c = null;
        this.f9708d = null;
        this.f9709e = null;
        this.f9710f = 1;
        this.f9711g = 1;
        this.f9712h = 0;
        this.f9713i = 0L;
        this.f9714j = 0;
        this.f9715k = 0;
        this.f9716l = false;
        this.f9718n = 0;
        this.f9719o = new long[16];
        this.f9720p = null;
        this.f9721q = 0L;
        this.f9722r = 0L;
        this.f9723s = 0L;
        this.f9724t = 0L;
        this.f9717m = new byte[128];
        this.f9725u = EnumC2383o.ANY;
        this.f9705a = bArr2[0];
        this.f9706b = bArr2[1];
        this.f9710f = bArr2[2];
        this.f9711g = bArr2[3];
        this.f9712h = org.bouncycastle.util.p.r(bArr2, 4);
        this.f9713i |= org.bouncycastle.util.p.r(bArr2, 8);
        this.f9714j = bArr2[16];
        this.f9715k = bArr2[17];
        k();
    }
}
