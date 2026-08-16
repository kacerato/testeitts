package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class J extends AbstractC2658p implements InterfaceC2653k {

    public static final int f9524m = 20;

    public static final int f9525n = 1518500249;

    public static final int f9526o = 1859775393;

    public static final int f9527p = -1894007588;

    public static final int f9528q = -899497514;

    public int f9529f;

    public int f9530g;

    public int f9531h;

    public int f9532i;

    public int f9533j;

    public int[] f9534k;

    public int f9535l;

    public J() {
        this(EnumC2383o.ANY);
    }

    @Override
    public byte[] a() {
        int i10 = this.f9535l * 4;
        byte[] bArr = new byte[i10 + 41];
        super.m(bArr);
        org.bouncycastle.util.p.h(this.f9529f, bArr, 16);
        org.bouncycastle.util.p.h(this.f9530g, bArr, 20);
        org.bouncycastle.util.p.h(this.f9531h, bArr, 24);
        org.bouncycastle.util.p.h(this.f9532i, bArr, 28);
        org.bouncycastle.util.p.h(this.f9533j, bArr, 32);
        org.bouncycastle.util.p.h(this.f9535l, bArr, 36);
        for (int i11 = 0; i11 != this.f9535l; i11++) {
            org.bouncycastle.util.p.h(this.f9534k[i11], bArr, (i11 * 4) + 40);
        }
        bArr[i10 + 40] = (byte) this.f9919a.ordinal();
        return bArr;
    }

    @Override
    public String b() {
        return "SHA-1";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.h(this.f9529f, bArr, i10);
        org.bouncycastle.util.p.h(this.f9530g, bArr, i10 + 4);
        org.bouncycastle.util.p.h(this.f9531h, bArr, i10 + 8);
        org.bouncycastle.util.p.h(this.f9532i, bArr, i10 + 12);
        org.bouncycastle.util.p.h(this.f9533j, bArr, i10 + 16);
        reset();
        return 20;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new J(this);
    }

    @Override
    public int f() {
        return 20;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        J j10 = (J) nVar;
        super.d(j10);
        q(j10);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.a(this, 128, this.f9919a);
    }

    @Override
    public void n() {
        for (int i10 = 16; i10 < 80; i10++) {
            int[] iArr = this.f9534k;
            int i11 = ((iArr[i10 - 3] ^ iArr[i10 - 8]) ^ iArr[i10 - 14]) ^ iArr[i10 - 16];
            iArr[i10] = (i11 >>> 31) | (i11 << 1);
        }
        int i12 = this.f9529f;
        int i13 = this.f9530g;
        int i14 = this.f9531h;
        int i15 = this.f9532i;
        int i16 = this.f9533j;
        int i17 = 0;
        for (int i18 = 0; i18 < 4; i18++) {
            int r10 = i16 + ((i12 << 5) | (i12 >>> 27)) + r(i13, i14, i15) + this.f9534k[i17] + 1518500249;
            int i19 = (i13 >>> 2) | (i13 << 30);
            int r11 = i15 + ((r10 << 5) | (r10 >>> 27)) + r(i12, i19, i14) + this.f9534k[i17 + 1] + 1518500249;
            int i20 = (i12 >>> 2) | (i12 << 30);
            int r12 = i14 + ((r11 << 5) | (r11 >>> 27)) + r(r10, i20, i19) + this.f9534k[i17 + 2] + 1518500249;
            i16 = (r10 >>> 2) | (r10 << 30);
            int i21 = i17 + 4;
            i13 = i19 + ((r12 << 5) | (r12 >>> 27)) + r(r11, i16, i20) + this.f9534k[i17 + 3] + 1518500249;
            i15 = (r11 >>> 2) | (r11 << 30);
            i17 += 5;
            i12 = i20 + ((i13 << 5) | (i13 >>> 27)) + r(r12, i15, i16) + this.f9534k[i21] + 1518500249;
            i14 = (r12 >>> 2) | (r12 << 30);
        }
        for (int i22 = 0; i22 < 4; i22++) {
            int t10 = i16 + ((i12 << 5) | (i12 >>> 27)) + t(i13, i14, i15) + this.f9534k[i17] + 1859775393;
            int i23 = (i13 >>> 2) | (i13 << 30);
            int t11 = i15 + ((t10 << 5) | (t10 >>> 27)) + t(i12, i23, i14) + this.f9534k[i17 + 1] + 1859775393;
            int i24 = (i12 >>> 2) | (i12 << 30);
            int t12 = i14 + ((t11 << 5) | (t11 >>> 27)) + t(t10, i24, i23) + this.f9534k[i17 + 2] + 1859775393;
            i16 = (t10 >>> 2) | (t10 << 30);
            int i25 = i17 + 4;
            i13 = i23 + ((t12 << 5) | (t12 >>> 27)) + t(t11, i16, i24) + this.f9534k[i17 + 3] + 1859775393;
            i15 = (t11 >>> 2) | (t11 << 30);
            i17 += 5;
            i12 = i24 + ((i13 << 5) | (i13 >>> 27)) + t(t12, i15, i16) + this.f9534k[i25] + 1859775393;
            i14 = (t12 >>> 2) | (t12 << 30);
        }
        for (int i26 = 0; i26 < 4; i26++) {
            int s10 = i16 + (((((i12 << 5) | (i12 >>> 27)) + s(i13, i14, i15)) + this.f9534k[i17]) - 1894007588);
            int s11 = i15 + (((((s10 << 5) | (s10 >>> 27)) + s(i12, r2, i14)) + this.f9534k[i17 + 1]) - 1894007588);
            int s12 = i14 + (((((s11 << 5) | (s11 >>> 27)) + s(s10, r1, r2)) + this.f9534k[i17 + 2]) - 1894007588);
            i16 = (s10 >>> 2) | (s10 << 30);
            int i27 = i17 + 4;
            i13 = ((i13 >>> 2) | (i13 << 30)) + (((((s12 << 5) | (s12 >>> 27)) + s(s11, i16, r1)) + this.f9534k[i17 + 3]) - 1894007588);
            i15 = (s11 >>> 2) | (s11 << 30);
            i17 += 5;
            i12 = ((i12 >>> 2) | (i12 << 30)) + (((((i13 << 5) | (i13 >>> 27)) + s(s12, i15, i16)) + this.f9534k[i27]) - 1894007588);
            i14 = (s12 >>> 2) | (s12 << 30);
        }
        for (int i28 = 0; i28 <= 3; i28++) {
            int t13 = i16 + (((((i12 << 5) | (i12 >>> 27)) + t(i13, i14, i15)) + this.f9534k[i17]) - 899497514);
            int t14 = i15 + (((((t13 << 5) | (t13 >>> 27)) + t(i12, r2, i14)) + this.f9534k[i17 + 1]) - 899497514);
            int t15 = i14 + (((((t14 << 5) | (t14 >>> 27)) + t(t13, r1, r2)) + this.f9534k[i17 + 2]) - 899497514);
            i16 = (t13 >>> 2) | (t13 << 30);
            int i29 = i17 + 4;
            i13 = ((i13 >>> 2) | (i13 << 30)) + (((((t15 << 5) | (t15 >>> 27)) + t(t14, i16, r1)) + this.f9534k[i17 + 3]) - 899497514);
            i15 = (t14 >>> 2) | (t14 << 30);
            i17 += 5;
            i12 = ((i12 >>> 2) | (i12 << 30)) + (((((i13 << 5) | (i13 >>> 27)) + t(t15, i15, i16)) + this.f9534k[i29]) - 899497514);
            i14 = (t15 >>> 2) | (t15 << 30);
        }
        this.f9529f += i12;
        this.f9530g += i13;
        this.f9531h += i14;
        this.f9532i += i15;
        this.f9533j += i16;
        this.f9535l = 0;
        for (int i30 = 0; i30 < 16; i30++) {
            this.f9534k[i30] = 0;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f9535l > 14) {
            n();
        }
        int[] iArr = this.f9534k;
        iArr[14] = (int) (j10 >>> 32);
        iArr[15] = (int) j10;
    }

    @Override
    public void p(byte[] bArr, int i10) {
        this.f9534k[this.f9535l] = org.bouncycastle.util.p.a(bArr, i10);
        int i11 = this.f9535l + 1;
        this.f9535l = i11;
        if (i11 == 16) {
            n();
        }
    }

    public final void q(J j10) {
        this.f9529f = j10.f9529f;
        this.f9530g = j10.f9530g;
        this.f9531h = j10.f9531h;
        this.f9532i = j10.f9532i;
        this.f9533j = j10.f9533j;
        int[] iArr = j10.f9534k;
        System.arraycopy(iArr, 0, this.f9534k, 0, iArr.length);
        this.f9535l = j10.f9535l;
    }

    public final int r(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    @Override
    public void reset() {
        super.reset();
        this.f9529f = 1732584193;
        this.f9530g = -271733879;
        this.f9531h = -1732584194;
        this.f9532i = 271733878;
        this.f9533j = -1009589776;
        this.f9535l = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f9534k;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final int s(int i10, int i11, int i12) {
        return (i10 & (i11 | i12)) | (i11 & i12);
    }

    public final int t(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    public J(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f9534k = new int[80];
        Bi.r.a(k());
        reset();
    }

    public J(J j10) {
        super(j10);
        this.f9534k = new int[80];
        Bi.r.a(k());
        q(j10);
    }

    public J(byte[] bArr) {
        super(bArr);
        this.f9534k = new int[80];
        Bi.r.a(k());
        this.f9529f = org.bouncycastle.util.p.a(bArr, 16);
        this.f9530g = org.bouncycastle.util.p.a(bArr, 20);
        this.f9531h = org.bouncycastle.util.p.a(bArr, 24);
        this.f9532i = org.bouncycastle.util.p.a(bArr, 28);
        this.f9533j = org.bouncycastle.util.p.a(bArr, 32);
        this.f9535l = org.bouncycastle.util.p.a(bArr, 36);
        for (int i10 = 0; i10 != this.f9535l; i10++) {
            this.f9534k[i10] = org.bouncycastle.util.p.a(bArr, (i10 * 4) + 40);
        }
    }
}
