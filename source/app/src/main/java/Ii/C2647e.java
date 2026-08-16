package Ii;

import Bi.EnumC2383o;
import org.bouncycastle.crypto.OutputLengthException;

public class C2647e implements Bi.D {

    public static final int[] f9759v = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};

    public static final byte[][] f9760w = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}, new byte[]{11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13}, new byte[]{2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9}, new byte[]{12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11}, new byte[]{13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10}, new byte[]{6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0}};

    public static final int f9761x = 10;

    public static final int f9762y = 64;

    public int f9763a;

    public int f9764b;

    public byte[] f9765c;

    public byte[] f9766d;

    public byte[] f9767e;

    public int f9768f;

    public int f9769g;

    public int f9770h;

    public long f9771i;

    public int f9772j;

    public int f9773k;

    public boolean f9774l;

    public byte[] f9775m;

    public int f9776n;

    public int[] f9777o;

    public int[] f9778p;

    public int f9779q;

    public int f9780r;

    public int f9781s;

    public int f9782t;

    public final EnumC2383o f9783u;

    public C2647e() {
        this(256, EnumC2383o.ANY);
    }

    private void j(byte[] bArr, int i10) {
        l();
        int[] iArr = new int[16];
        org.bouncycastle.util.p.s(bArr, i10, iArr);
        int i11 = 0;
        for (int i12 = 0; i12 < 10; i12++) {
            byte[][] bArr2 = f9760w;
            byte[] bArr3 = bArr2[i12];
            a(iArr[bArr3[0]], iArr[bArr3[1]], 0, 4, 8, 12);
            byte[] bArr4 = bArr2[i12];
            a(iArr[bArr4[2]], iArr[bArr4[3]], 1, 5, 9, 13);
            byte[] bArr5 = bArr2[i12];
            a(iArr[bArr5[4]], iArr[bArr5[5]], 2, 6, 10, 14);
            byte[] bArr6 = bArr2[i12];
            a(iArr[bArr6[6]], iArr[bArr6[7]], 3, 7, 11, 15);
            byte[] bArr7 = bArr2[i12];
            a(iArr[bArr7[8]], iArr[bArr7[9]], 0, 5, 10, 15);
            byte[] bArr8 = bArr2[i12];
            a(iArr[bArr8[10]], iArr[bArr8[11]], 1, 6, 11, 12);
            byte[] bArr9 = bArr2[i12];
            a(iArr[bArr9[12]], iArr[bArr9[13]], 2, 7, 8, 13);
            byte[] bArr10 = bArr2[i12];
            a(iArr[bArr10[14]], iArr[bArr10[15]], 3, 4, 9, 14);
        }
        while (true) {
            int[] iArr2 = this.f9778p;
            if (i11 >= iArr2.length) {
                return;
            }
            int i13 = iArr2[i11];
            int[] iArr3 = this.f9777o;
            iArr2[i11] = (i13 ^ iArr3[i11]) ^ iArr3[i11 + 8];
            i11++;
        }
    }

    private void l() {
        int[] iArr = this.f9778p;
        System.arraycopy(iArr, 0, this.f9777o, 0, iArr.length);
        int[] iArr2 = f9759v;
        System.arraycopy(iArr2, 0, this.f9777o, this.f9778p.length, 4);
        int[] iArr3 = this.f9777o;
        iArr3[12] = this.f9779q ^ iArr2[4];
        iArr3[13] = this.f9780r ^ iArr2[5];
        iArr3[14] = this.f9781s ^ iArr2[6];
        iArr3[15] = iArr2[7] ^ this.f9782t;
    }

    public final void a(int i10, int i11, int i12, int i13, int i14, int i15) {
        int[] iArr = this.f9777o;
        int i16 = iArr[i12] + iArr[i13] + i10;
        iArr[i12] = i16;
        iArr[i15] = org.bouncycastle.util.k.i(iArr[i15] ^ i16, 16);
        int[] iArr2 = this.f9777o;
        int i17 = iArr2[i14] + iArr2[i15];
        iArr2[i14] = i17;
        iArr2[i13] = org.bouncycastle.util.k.i(i17 ^ iArr2[i13], 12);
        int[] iArr3 = this.f9777o;
        int i18 = iArr3[i12] + iArr3[i13] + i11;
        iArr3[i12] = i18;
        iArr3[i15] = org.bouncycastle.util.k.i(iArr3[i15] ^ i18, 8);
        int[] iArr4 = this.f9777o;
        int i19 = iArr4[i14] + iArr4[i15];
        iArr4[i14] = i19;
        iArr4[i13] = org.bouncycastle.util.k.i(i19 ^ iArr4[i13], 7);
    }

    @Override
    public String b() {
        return "BLAKE2s";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        if (i10 > bArr.length - this.f9763a) {
            throw new OutputLengthException("output buffer too short");
        }
        this.f9781s = -1;
        if (this.f9774l) {
            this.f9782t = -1;
        }
        int i11 = this.f9779q;
        int i12 = this.f9776n;
        int i13 = i11 + i12;
        this.f9779q = i13;
        if (i13 < 0 && i12 > (-i13)) {
            this.f9780r++;
        }
        j(this.f9775m, 0);
        org.bouncycastle.util.a.e0(this.f9775m, (byte) 0);
        org.bouncycastle.util.a.i0(this.f9777o, 0);
        int i14 = this.f9763a;
        int i15 = i14 >>> 2;
        int i16 = i14 & 3;
        org.bouncycastle.util.p.n(this.f9778p, 0, i15, bArr, i10);
        if (i16 > 0) {
            byte[] bArr2 = new byte[4];
            org.bouncycastle.util.p.m(this.f9778p[i15], bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, (i10 + this.f9763a) - i16, i16);
        }
        org.bouncycastle.util.a.i0(this.f9778p, 0);
        reset();
        return this.f9763a;
    }

    public void d() {
        byte[] bArr = this.f9767e;
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
            org.bouncycastle.util.a.e0(this.f9775m, (byte) 0);
        }
    }

    @Override
    public int f() {
        return this.f9763a;
    }

    public void g() {
        byte[] bArr = this.f9765c;
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
        }
    }

    @Override
    public int i() {
        return 64;
    }

    public final void k(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f9775m = new byte[64];
        if (bArr3 != null && bArr3.length > 0) {
            int length = bArr3.length;
            this.f9764b = length;
            if (length > 32) {
                throw new IllegalArgumentException("Keys > 32 bytes are not supported");
            }
            byte[] bArr4 = new byte[length];
            this.f9767e = bArr4;
            System.arraycopy(bArr3, 0, bArr4, 0, length);
            System.arraycopy(bArr3, 0, this.f9775m, 0, this.f9764b);
            this.f9776n = 64;
        }
        if (this.f9778p == null) {
            this.f9778p = r0;
            int[] iArr = f9759v;
            long j10 = this.f9771i;
            int[] iArr2 = {iArr[0] ^ ((this.f9763a | (this.f9764b << 8)) | ((this.f9768f << 16) | (this.f9769g << 24))), iArr[1] ^ this.f9770h, ((int) j10) ^ iArr[2], ((((int) (j10 >> 32)) | (this.f9772j << 16)) | (this.f9773k << 24)) ^ iArr[3], iArr[4], iArr[5]};
            if (bArr != null) {
                if (bArr.length != 8) {
                    throw new IllegalArgumentException("Salt length must be exactly 8 bytes");
                }
                byte[] bArr5 = new byte[8];
                this.f9765c = bArr5;
                System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
                int[] iArr3 = this.f9778p;
                iArr3[4] = iArr3[4] ^ org.bouncycastle.util.p.r(bArr, 0);
                int[] iArr4 = this.f9778p;
                iArr4[5] = org.bouncycastle.util.p.r(bArr, 4) ^ iArr4[5];
            }
            int[] iArr5 = this.f9778p;
            iArr5[6] = iArr[6];
            iArr5[7] = iArr[7];
            if (bArr2 != null) {
                if (bArr2.length != 8) {
                    throw new IllegalArgumentException("Personalization length must be exactly 8 bytes");
                }
                byte[] bArr6 = new byte[8];
                this.f9766d = bArr6;
                System.arraycopy(bArr2, 0, bArr6, 0, bArr2.length);
                int[] iArr6 = this.f9778p;
                iArr6[6] = iArr6[6] ^ org.bouncycastle.util.p.r(bArr2, 0);
                int[] iArr7 = this.f9778p;
                iArr7[7] = org.bouncycastle.util.p.r(bArr2, 4) ^ iArr7[7];
            }
        }
    }

    public void m() {
        this.f9774l = true;
    }

    @Override
    public void reset() {
        this.f9776n = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9774l = false;
        this.f9778p = null;
        org.bouncycastle.util.a.e0(this.f9775m, (byte) 0);
        byte[] bArr = this.f9767e;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.f9775m, 0, bArr.length);
            this.f9776n = 64;
        }
        k(this.f9765c, this.f9766d, this.f9767e);
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f9776n;
        if (64 - i10 != 0) {
            this.f9775m[i10] = b10;
            this.f9776n = i10 + 1;
            return;
        }
        int i11 = this.f9779q + 64;
        this.f9779q = i11;
        if (i11 == 0) {
            this.f9780r++;
        }
        j(this.f9775m, 0);
        org.bouncycastle.util.a.e0(this.f9775m, (byte) 0);
        this.f9775m[0] = b10;
        this.f9776n = 1;
    }

    public C2647e(int i10) {
        this(i10, EnumC2383o.ANY);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12;
        if (bArr == null || i11 == 0) {
            return;
        }
        int i13 = this.f9776n;
        if (i13 != 0) {
            i12 = 64 - i13;
            if (i12 >= i11) {
                System.arraycopy(bArr, i10, this.f9775m, i13, i11);
                this.f9776n += i11;
            }
            System.arraycopy(bArr, i10, this.f9775m, i13, i12);
            int i14 = this.f9779q + 64;
            this.f9779q = i14;
            if (i14 == 0) {
                this.f9780r++;
            }
            j(this.f9775m, 0);
            this.f9776n = 0;
            org.bouncycastle.util.a.e0(this.f9775m, (byte) 0);
        } else {
            i12 = 0;
        }
        int i15 = i11 + i10;
        int i16 = i15 - 64;
        int i17 = i10 + i12;
        while (i17 < i16) {
            int i18 = this.f9779q + 64;
            this.f9779q = i18;
            if (i18 == 0) {
                this.f9780r++;
            }
            j(bArr, i17);
            i17 += 64;
        }
        i11 = i15 - i17;
        System.arraycopy(bArr, i17, this.f9775m, 0, i11);
        this.f9776n += i11;
    }

    public C2647e(int i10, int i11, long j10) {
        this(i10, i11, j10, EnumC2383o.ANY);
    }

    public C2647e(int i10, int i11, long j10, EnumC2383o enumC2383o) {
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        this.f9763a = i10;
        this.f9771i = j10;
        this.f9768f = 0;
        this.f9769g = 0;
        this.f9770h = i11;
        this.f9773k = i11;
        this.f9772j = 0;
        this.f9783u = enumC2383o;
        Bi.r.a(Z.a(this, i10 * 8, enumC2383o));
        k(null, null, null);
    }

    public C2647e(int i10, EnumC2383o enumC2383o) {
        this.f9763a = 32;
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9768f = 1;
        this.f9769g = 1;
        this.f9770h = 0;
        this.f9771i = 0L;
        this.f9772j = 0;
        this.f9773k = 0;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        if (i10 < 8 || i10 > 256 || i10 % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2s digest bit length must be a multiple of 8 and not greater than 256");
        }
        this.f9763a = i10 / 8;
        this.f9783u = enumC2383o;
        Bi.r.a(Z.a(this, i10, enumC2383o));
        k(null, null, null);
    }

    public C2647e(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, long j10, EnumC2383o enumC2383o) {
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9768f = 1;
        this.f9769g = 1;
        this.f9770h = 0;
        this.f9772j = 0;
        this.f9773k = 0;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        this.f9763a = i10;
        this.f9771i = j10;
        this.f9783u = enumC2383o;
        Bi.r.a(Z.a(this, i10 * 8, enumC2383o));
        k(bArr2, bArr3, bArr);
    }

    public C2647e(C2647e c2647e) {
        this.f9763a = 32;
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9768f = 1;
        this.f9769g = 1;
        this.f9770h = 0;
        this.f9771i = 0L;
        this.f9772j = 0;
        this.f9773k = 0;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        this.f9776n = c2647e.f9776n;
        this.f9775m = org.bouncycastle.util.a.p(c2647e.f9775m);
        this.f9764b = c2647e.f9764b;
        this.f9767e = org.bouncycastle.util.a.p(c2647e.f9767e);
        this.f9763a = c2647e.f9763a;
        this.f9777o = org.bouncycastle.util.a.s(c2647e.f9777o);
        this.f9778p = org.bouncycastle.util.a.s(c2647e.f9778p);
        this.f9779q = c2647e.f9779q;
        this.f9780r = c2647e.f9780r;
        this.f9781s = c2647e.f9781s;
        this.f9765c = org.bouncycastle.util.a.p(c2647e.f9765c);
        this.f9766d = org.bouncycastle.util.a.p(c2647e.f9766d);
        this.f9768f = c2647e.f9768f;
        this.f9769g = c2647e.f9769g;
        this.f9770h = c2647e.f9770h;
        this.f9771i = c2647e.f9771i;
        this.f9772j = c2647e.f9772j;
        this.f9773k = c2647e.f9773k;
        this.f9783u = c2647e.f9783u;
    }

    public C2647e(byte[] bArr) {
        this(bArr, EnumC2383o.ANY);
    }

    public C2647e(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3) {
        this(bArr, i10, bArr2, bArr3, EnumC2383o.ANY);
    }

    public C2647e(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, EnumC2383o enumC2383o) {
        this.f9763a = 32;
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9768f = 1;
        this.f9769g = 1;
        this.f9770h = 0;
        this.f9771i = 0L;
        this.f9772j = 0;
        this.f9773k = 0;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        if (i10 < 1 || i10 > 32) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 32)");
        }
        this.f9763a = i10;
        this.f9783u = enumC2383o;
        Bi.r.a(Z.a(this, i10 * 8, enumC2383o));
        k(bArr2, bArr3, bArr);
    }

    public C2647e(byte[] bArr, EnumC2383o enumC2383o) {
        this.f9763a = 32;
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9768f = 1;
        this.f9769g = 1;
        this.f9770h = 0;
        this.f9771i = 0L;
        this.f9772j = 0;
        this.f9773k = 0;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        this.f9783u = enumC2383o;
        Bi.r.a(Z.a(this, bArr.length * 8, enumC2383o));
        k(null, null, bArr);
    }

    public C2647e(byte[] bArr, byte[] bArr2) {
        this.f9763a = 32;
        this.f9764b = 0;
        this.f9765c = null;
        this.f9766d = null;
        this.f9767e = null;
        this.f9768f = 1;
        this.f9769g = 1;
        this.f9770h = 0;
        this.f9771i = 0L;
        this.f9772j = 0;
        this.f9773k = 0;
        this.f9774l = false;
        this.f9775m = null;
        this.f9776n = 0;
        this.f9777o = new int[16];
        this.f9778p = null;
        this.f9779q = 0;
        this.f9780r = 0;
        this.f9781s = 0;
        this.f9782t = 0;
        this.f9783u = EnumC2383o.ANY;
        this.f9763a = bArr2[0];
        this.f9764b = bArr2[1];
        this.f9768f = bArr2[2];
        this.f9769g = bArr2[3];
        this.f9770h = org.bouncycastle.util.p.r(bArr2, 4);
        this.f9771i |= org.bouncycastle.util.p.r(bArr2, 8);
        this.f9772j = bArr2[14];
        this.f9773k = bArr2[15];
        byte[] bArr3 = new byte[8];
        byte[] bArr4 = new byte[8];
        System.arraycopy(bArr2, 16, bArr3, 0, 8);
        System.arraycopy(bArr2, 24, bArr4, 0, 8);
        k(bArr3, bArr4, bArr);
    }
}
