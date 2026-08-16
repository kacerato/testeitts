package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class K extends AbstractC2658p implements InterfaceC2653k {

    public static final int f9536p = 28;

    public static final int[] f9537q = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    public int f9538f;

    public int f9539g;

    public int f9540h;

    public int f9541i;

    public int f9542j;

    public int f9543k;

    public int f9544l;

    public int f9545m;

    public int[] f9546n;

    public int f9547o;

    public K() {
        this(EnumC2383o.ANY);
    }

    private int q(int i10, int i11, int i12) {
        return ((~i10) & i12) ^ (i11 & i10);
    }

    private int r(int i10, int i11, int i12) {
        return ((i10 & i12) ^ (i10 & i11)) ^ (i11 & i12);
    }

    private int s(int i10) {
        return ((i10 << 10) | (i10 >>> 22)) ^ (((i10 >>> 2) | (i10 << 30)) ^ ((i10 >>> 13) | (i10 << 19)));
    }

    private int t(int i10) {
        return ((i10 << 7) | (i10 >>> 25)) ^ (((i10 >>> 6) | (i10 << 26)) ^ ((i10 >>> 11) | (i10 << 21)));
    }

    private int u(int i10) {
        return (i10 >>> 3) ^ (((i10 >>> 7) | (i10 << 25)) ^ ((i10 >>> 18) | (i10 << 14)));
    }

    private int v(int i10) {
        return (i10 >>> 10) ^ (((i10 >>> 17) | (i10 << 15)) ^ ((i10 >>> 19) | (i10 << 13)));
    }

    @Override
    public byte[] a() {
        int i10 = this.f9547o * 4;
        byte[] bArr = new byte[i10 + 53];
        super.m(bArr);
        org.bouncycastle.util.p.h(this.f9538f, bArr, 16);
        org.bouncycastle.util.p.h(this.f9539g, bArr, 20);
        org.bouncycastle.util.p.h(this.f9540h, bArr, 24);
        org.bouncycastle.util.p.h(this.f9541i, bArr, 28);
        org.bouncycastle.util.p.h(this.f9542j, bArr, 32);
        org.bouncycastle.util.p.h(this.f9543k, bArr, 36);
        org.bouncycastle.util.p.h(this.f9544l, bArr, 40);
        org.bouncycastle.util.p.h(this.f9545m, bArr, 44);
        org.bouncycastle.util.p.h(this.f9547o, bArr, 48);
        for (int i11 = 0; i11 != this.f9547o; i11++) {
            org.bouncycastle.util.p.h(this.f9546n[i11], bArr, (i11 * 4) + 52);
        }
        bArr[i10 + 52] = (byte) this.f9919a.ordinal();
        return bArr;
    }

    @Override
    public String b() {
        return "SHA-224";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.h(this.f9538f, bArr, i10);
        org.bouncycastle.util.p.h(this.f9539g, bArr, i10 + 4);
        org.bouncycastle.util.p.h(this.f9540h, bArr, i10 + 8);
        org.bouncycastle.util.p.h(this.f9541i, bArr, i10 + 12);
        org.bouncycastle.util.p.h(this.f9542j, bArr, i10 + 16);
        org.bouncycastle.util.p.h(this.f9543k, bArr, i10 + 20);
        org.bouncycastle.util.p.h(this.f9544l, bArr, i10 + 24);
        reset();
        return 28;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new K(this);
    }

    @Override
    public int f() {
        return 28;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        w((K) nVar);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.a(this, 192, this.f9919a);
    }

    @Override
    public void n() {
        for (int i10 = 16; i10 <= 63; i10++) {
            int[] iArr = this.f9546n;
            int v10 = v(iArr[i10 - 2]);
            int[] iArr2 = this.f9546n;
            iArr[i10] = v10 + iArr2[i10 - 7] + u(iArr2[i10 - 15]) + this.f9546n[i10 - 16];
        }
        int i11 = this.f9538f;
        int i12 = this.f9539g;
        int i13 = this.f9540h;
        int i14 = this.f9541i;
        int i15 = this.f9542j;
        int i16 = this.f9543k;
        int i17 = this.f9544l;
        int i18 = this.f9545m;
        int i19 = 0;
        for (int i20 = 0; i20 < 8; i20++) {
            int t10 = t(i15) + q(i15, i16, i17);
            int[] iArr3 = f9537q;
            int i21 = i18 + t10 + iArr3[i19] + this.f9546n[i19];
            int i22 = i14 + i21;
            int s10 = i21 + s(i11) + r(i11, i12, i13);
            int i23 = i19 + 1;
            int t11 = i17 + t(i22) + q(i22, i15, i16) + iArr3[i23] + this.f9546n[i23];
            int i24 = i13 + t11;
            int s11 = t11 + s(s10) + r(s10, i11, i12);
            int i25 = i19 + 2;
            int t12 = i16 + t(i24) + q(i24, i22, i15) + iArr3[i25] + this.f9546n[i25];
            int i26 = i12 + t12;
            int s12 = t12 + s(s11) + r(s11, s10, i11);
            int i27 = i19 + 3;
            int t13 = i15 + t(i26) + q(i26, i24, i22) + iArr3[i27] + this.f9546n[i27];
            int i28 = i11 + t13;
            int s13 = t13 + s(s12) + r(s12, s11, s10);
            int i29 = i19 + 4;
            int t14 = i22 + t(i28) + q(i28, i26, i24) + iArr3[i29] + this.f9546n[i29];
            i18 = s10 + t14;
            i14 = t14 + s(s13) + r(s13, s12, s11);
            int i30 = i19 + 5;
            int t15 = i24 + t(i18) + q(i18, i28, i26) + iArr3[i30] + this.f9546n[i30];
            i17 = s11 + t15;
            i13 = t15 + s(i14) + r(i14, s13, s12);
            int i31 = i19 + 6;
            int t16 = i26 + t(i17) + q(i17, i18, i28) + iArr3[i31] + this.f9546n[i31];
            i16 = s12 + t16;
            i12 = t16 + s(i13) + r(i13, i14, s13);
            int i32 = i19 + 7;
            int t17 = i28 + t(i16) + q(i16, i17, i18) + iArr3[i32] + this.f9546n[i32];
            i15 = s13 + t17;
            i11 = t17 + s(i12) + r(i12, i13, i14);
            i19 += 8;
        }
        this.f9538f += i11;
        this.f9539g += i12;
        this.f9540h += i13;
        this.f9541i += i14;
        this.f9542j += i15;
        this.f9543k += i16;
        this.f9544l += i17;
        this.f9545m += i18;
        this.f9547o = 0;
        for (int i33 = 0; i33 < 16; i33++) {
            this.f9546n[i33] = 0;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f9547o > 14) {
            n();
        }
        int[] iArr = this.f9546n;
        iArr[14] = (int) (j10 >>> 32);
        iArr[15] = (int) j10;
    }

    @Override
    public void p(byte[] bArr, int i10) {
        this.f9546n[this.f9547o] = org.bouncycastle.util.p.a(bArr, i10);
        int i11 = this.f9547o + 1;
        this.f9547o = i11;
        if (i11 == 16) {
            n();
        }
    }

    @Override
    public void reset() {
        super.reset();
        this.f9538f = -1056596264;
        this.f9539g = 914150663;
        this.f9540h = 812702999;
        this.f9541i = -150054599;
        this.f9542j = -4191439;
        this.f9543k = 1750603025;
        this.f9544l = 1694076839;
        this.f9545m = -1090891868;
        this.f9547o = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f9546n;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final void w(K k10) {
        super.d(k10);
        this.f9538f = k10.f9538f;
        this.f9539g = k10.f9539g;
        this.f9540h = k10.f9540h;
        this.f9541i = k10.f9541i;
        this.f9542j = k10.f9542j;
        this.f9543k = k10.f9543k;
        this.f9544l = k10.f9544l;
        this.f9545m = k10.f9545m;
        int[] iArr = k10.f9546n;
        System.arraycopy(iArr, 0, this.f9546n, 0, iArr.length);
        this.f9547o = k10.f9547o;
    }

    public K(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f9546n = new int[64];
        Bi.r.a(k());
        reset();
    }

    public K(K k10) {
        super(k10);
        this.f9546n = new int[64];
        Bi.r.a(k());
        w(k10);
    }

    public K(byte[] bArr) {
        super(bArr);
        this.f9546n = new int[64];
        Bi.r.a(k());
        this.f9538f = org.bouncycastle.util.p.a(bArr, 16);
        this.f9539g = org.bouncycastle.util.p.a(bArr, 20);
        this.f9540h = org.bouncycastle.util.p.a(bArr, 24);
        this.f9541i = org.bouncycastle.util.p.a(bArr, 28);
        this.f9542j = org.bouncycastle.util.p.a(bArr, 32);
        this.f9543k = org.bouncycastle.util.p.a(bArr, 36);
        this.f9544l = org.bouncycastle.util.p.a(bArr, 40);
        this.f9545m = org.bouncycastle.util.p.a(bArr, 44);
        this.f9547o = org.bouncycastle.util.p.a(bArr, 48);
        for (int i10 = 0; i10 != this.f9547o; i10++) {
            this.f9546n[i10] = org.bouncycastle.util.p.a(bArr, (i10 * 4) + 52);
        }
    }
}
