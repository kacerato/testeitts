package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;
import Bi.InterfaceC2392y;

public class L extends AbstractC2658p implements Bi.O {

    public static final int f9548p = 32;

    public static final int[] f9549q = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    public int f9550f;

    public int f9551g;

    public int f9552h;

    public int f9553i;

    public int f9554j;

    public int f9555k;

    public int f9556l;

    public int f9557m;

    public int[] f9558n;

    public int f9559o;

    public L() {
        this(EnumC2383o.ANY);
    }

    public static Bi.O A(byte[] bArr) {
        return new L(bArr);
    }

    public static int q(int i10, int i11, int i12) {
        return ((~i10) & i12) ^ (i11 & i10);
    }

    public static int r(int i10, int i11, int i12) {
        return ((i10 ^ i11) & i12) | (i10 & i11);
    }

    public static int s(int i10) {
        return ((i10 << 10) | (i10 >>> 22)) ^ (((i10 >>> 2) | (i10 << 30)) ^ ((i10 >>> 13) | (i10 << 19)));
    }

    public static int t(int i10) {
        return ((i10 << 7) | (i10 >>> 25)) ^ (((i10 >>> 6) | (i10 << 26)) ^ ((i10 >>> 11) | (i10 << 21)));
    }

    public static int u(int i10) {
        return (i10 >>> 3) ^ (((i10 >>> 7) | (i10 << 25)) ^ ((i10 >>> 18) | (i10 << 14)));
    }

    public static int v(int i10) {
        return (i10 >>> 10) ^ (((i10 >>> 17) | (i10 << 15)) ^ ((i10 >>> 19) | (i10 << 13)));
    }

    public static Bi.O x() {
        return new L();
    }

    public static Bi.O y(EnumC2383o enumC2383o) {
        return new L(enumC2383o);
    }

    public static Bi.O z(InterfaceC2392y interfaceC2392y) {
        if (interfaceC2392y instanceof L) {
            return new L((L) interfaceC2392y);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("receiver digest not available for input type ");
        sb2.append(interfaceC2392y != null ? interfaceC2392y.getClass().getName() : "null");
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override
    public byte[] a() {
        int i10 = this.f9559o * 4;
        byte[] bArr = new byte[i10 + 53];
        super.m(bArr);
        org.bouncycastle.util.p.h(this.f9550f, bArr, 16);
        org.bouncycastle.util.p.h(this.f9551g, bArr, 20);
        org.bouncycastle.util.p.h(this.f9552h, bArr, 24);
        org.bouncycastle.util.p.h(this.f9553i, bArr, 28);
        org.bouncycastle.util.p.h(this.f9554j, bArr, 32);
        org.bouncycastle.util.p.h(this.f9555k, bArr, 36);
        org.bouncycastle.util.p.h(this.f9556l, bArr, 40);
        org.bouncycastle.util.p.h(this.f9557m, bArr, 44);
        org.bouncycastle.util.p.h(this.f9559o, bArr, 48);
        for (int i11 = 0; i11 != this.f9559o; i11++) {
            org.bouncycastle.util.p.h(this.f9558n[i11], bArr, (i11 * 4) + 52);
        }
        bArr[i10 + 52] = (byte) this.f9919a.ordinal();
        return bArr;
    }

    @Override
    public String b() {
        return "SHA-256";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.h(this.f9550f, bArr, i10);
        org.bouncycastle.util.p.h(this.f9551g, bArr, i10 + 4);
        org.bouncycastle.util.p.h(this.f9552h, bArr, i10 + 8);
        org.bouncycastle.util.p.h(this.f9553i, bArr, i10 + 12);
        org.bouncycastle.util.p.h(this.f9554j, bArr, i10 + 16);
        org.bouncycastle.util.p.h(this.f9555k, bArr, i10 + 20);
        org.bouncycastle.util.p.h(this.f9556l, bArr, i10 + 24);
        org.bouncycastle.util.p.h(this.f9557m, bArr, i10 + 28);
        reset();
        return 32;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new L(this);
    }

    @Override
    public int f() {
        return 32;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        w((L) nVar);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.a(this, 256, this.f9919a);
    }

    @Override
    public void n() {
        for (int i10 = 16; i10 <= 63; i10++) {
            int[] iArr = this.f9558n;
            int v10 = v(iArr[i10 - 2]);
            int[] iArr2 = this.f9558n;
            iArr[i10] = v10 + iArr2[i10 - 7] + u(iArr2[i10 - 15]) + this.f9558n[i10 - 16];
        }
        int i11 = this.f9550f;
        int i12 = this.f9551g;
        int i13 = this.f9552h;
        int i14 = this.f9553i;
        int i15 = this.f9554j;
        int i16 = this.f9555k;
        int i17 = this.f9556l;
        int i18 = this.f9557m;
        int i19 = 0;
        for (int i20 = 0; i20 < 8; i20++) {
            int t10 = t(i15) + q(i15, i16, i17);
            int[] iArr3 = f9549q;
            int i21 = i18 + t10 + iArr3[i19] + this.f9558n[i19];
            int i22 = i14 + i21;
            int s10 = i21 + s(i11) + r(i11, i12, i13);
            int i23 = i19 + 1;
            int t11 = i17 + t(i22) + q(i22, i15, i16) + iArr3[i23] + this.f9558n[i23];
            int i24 = i13 + t11;
            int s11 = t11 + s(s10) + r(s10, i11, i12);
            int i25 = i19 + 2;
            int t12 = i16 + t(i24) + q(i24, i22, i15) + iArr3[i25] + this.f9558n[i25];
            int i26 = i12 + t12;
            int s12 = t12 + s(s11) + r(s11, s10, i11);
            int i27 = i19 + 3;
            int t13 = i15 + t(i26) + q(i26, i24, i22) + iArr3[i27] + this.f9558n[i27];
            int i28 = i11 + t13;
            int s13 = t13 + s(s12) + r(s12, s11, s10);
            int i29 = i19 + 4;
            int t14 = i22 + t(i28) + q(i28, i26, i24) + iArr3[i29] + this.f9558n[i29];
            i18 = s10 + t14;
            i14 = t14 + s(s13) + r(s13, s12, s11);
            int i30 = i19 + 5;
            int t15 = i24 + t(i18) + q(i18, i28, i26) + iArr3[i30] + this.f9558n[i30];
            i17 = s11 + t15;
            i13 = t15 + s(i14) + r(i14, s13, s12);
            int i31 = i19 + 6;
            int t16 = i26 + t(i17) + q(i17, i18, i28) + iArr3[i31] + this.f9558n[i31];
            i16 = s12 + t16;
            i12 = t16 + s(i13) + r(i13, i14, s13);
            int i32 = i19 + 7;
            int t17 = i28 + t(i16) + q(i16, i17, i18) + iArr3[i32] + this.f9558n[i32];
            i15 = s13 + t17;
            i11 = t17 + s(i12) + r(i12, i13, i14);
            i19 += 8;
        }
        this.f9550f += i11;
        this.f9551g += i12;
        this.f9552h += i13;
        this.f9553i += i14;
        this.f9554j += i15;
        this.f9555k += i16;
        this.f9556l += i17;
        this.f9557m += i18;
        this.f9559o = 0;
        for (int i33 = 0; i33 < 16; i33++) {
            this.f9558n[i33] = 0;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f9559o > 14) {
            n();
        }
        int[] iArr = this.f9558n;
        iArr[14] = (int) (j10 >>> 32);
        iArr[15] = (int) j10;
    }

    @Override
    public void p(byte[] bArr, int i10) {
        this.f9558n[this.f9559o] = org.bouncycastle.util.p.a(bArr, i10);
        int i11 = this.f9559o + 1;
        this.f9559o = i11;
        if (i11 == 16) {
            n();
        }
    }

    @Override
    public void reset() {
        super.reset();
        this.f9550f = 1779033703;
        this.f9551g = -1150833019;
        this.f9552h = 1013904242;
        this.f9553i = -1521486534;
        this.f9554j = 1359893119;
        this.f9555k = -1694144372;
        this.f9556l = 528734635;
        this.f9557m = 1541459225;
        this.f9559o = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f9558n;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final void w(L l10) {
        super.d(l10);
        this.f9550f = l10.f9550f;
        this.f9551g = l10.f9551g;
        this.f9552h = l10.f9552h;
        this.f9553i = l10.f9553i;
        this.f9554j = l10.f9554j;
        this.f9555k = l10.f9555k;
        this.f9556l = l10.f9556l;
        this.f9557m = l10.f9557m;
        int[] iArr = l10.f9558n;
        System.arraycopy(iArr, 0, this.f9558n, 0, iArr.length);
        this.f9559o = l10.f9559o;
    }

    public L(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f9558n = new int[64];
        Bi.r.a(k());
        reset();
    }

    public L(L l10) {
        super(l10);
        this.f9558n = new int[64];
        w(l10);
    }

    public L(byte[] bArr) {
        super(bArr);
        this.f9558n = new int[64];
        this.f9550f = org.bouncycastle.util.p.a(bArr, 16);
        this.f9551g = org.bouncycastle.util.p.a(bArr, 20);
        this.f9552h = org.bouncycastle.util.p.a(bArr, 24);
        this.f9553i = org.bouncycastle.util.p.a(bArr, 28);
        this.f9554j = org.bouncycastle.util.p.a(bArr, 32);
        this.f9555k = org.bouncycastle.util.p.a(bArr, 36);
        this.f9556l = org.bouncycastle.util.p.a(bArr, 40);
        this.f9557m = org.bouncycastle.util.p.a(bArr, 44);
        this.f9559o = org.bouncycastle.util.p.a(bArr, 48);
        for (int i10 = 0; i10 != this.f9559o; i10++) {
            this.f9558n[i10] = org.bouncycastle.util.p.a(bArr, (i10 * 4) + 52);
        }
    }
}
