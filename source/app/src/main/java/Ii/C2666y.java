package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class C2666y extends AbstractC2658p {

    public static final int f10001l = 16;

    public static final int f10002m = 3;

    public static final int f10003n = 7;

    public static final int f10004o = 11;

    public static final int f10005p = 19;

    public static final int f10006q = 3;

    public static final int f10007r = 5;

    public static final int f10008s = 9;

    public static final int f10009t = 13;

    public static final int f10010u = 3;

    public static final int f10011v = 9;

    public static final int f10012w = 11;

    public static final int f10013x = 15;

    public int f10014f;

    public int f10015g;

    public int f10016h;

    public int f10017i;

    public int[] f10018j;

    public int f10019k;

    public C2666y() {
        this(EnumC2383o.ANY);
    }

    private int u(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    @Override
    public String b() {
        return "MD4";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.m(this.f10014f, bArr, i10);
        org.bouncycastle.util.p.m(this.f10015g, bArr, i10 + 4);
        org.bouncycastle.util.p.m(this.f10016h, bArr, i10 + 8);
        org.bouncycastle.util.p.m(this.f10017i, bArr, i10 + 12);
        reset();
        return 16;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2666y(this);
    }

    @Override
    public int f() {
        return 16;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        t((C2666y) nVar);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.b(this, this.f9919a);
    }

    @Override
    public void n() {
        int i10 = this.f10014f;
        int i11 = this.f10015g;
        int i12 = this.f10016h;
        int i13 = this.f10017i;
        int u10 = u(i10 + q(i11, i12, i13) + this.f10018j[0], 3);
        int u11 = u(i13 + q(u10, i11, i12) + this.f10018j[1], 7);
        int u12 = u(i12 + q(u11, u10, i11) + this.f10018j[2], 11);
        int u13 = u(i11 + q(u12, u11, u10) + this.f10018j[3], 19);
        int u14 = u(u10 + q(u13, u12, u11) + this.f10018j[4], 3);
        int u15 = u(u11 + q(u14, u13, u12) + this.f10018j[5], 7);
        int u16 = u(u12 + q(u15, u14, u13) + this.f10018j[6], 11);
        int u17 = u(u13 + q(u16, u15, u14) + this.f10018j[7], 19);
        int u18 = u(u14 + q(u17, u16, u15) + this.f10018j[8], 3);
        int u19 = u(u15 + q(u18, u17, u16) + this.f10018j[9], 7);
        int u20 = u(u16 + q(u19, u18, u17) + this.f10018j[10], 11);
        int u21 = u(u17 + q(u20, u19, u18) + this.f10018j[11], 19);
        int u22 = u(u18 + q(u21, u20, u19) + this.f10018j[12], 3);
        int u23 = u(u19 + q(u22, u21, u20) + this.f10018j[13], 7);
        int u24 = u(u20 + q(u23, u22, u21) + this.f10018j[14], 11);
        int u25 = u(u21 + q(u24, u23, u22) + this.f10018j[15], 19);
        int u26 = u(u22 + r(u25, u24, u23) + this.f10018j[0] + 1518500249, 3);
        int u27 = u(u23 + r(u26, u25, u24) + this.f10018j[4] + 1518500249, 5);
        int u28 = u(u24 + r(u27, u26, u25) + this.f10018j[8] + 1518500249, 9);
        int u29 = u(u25 + r(u28, u27, u26) + this.f10018j[12] + 1518500249, 13);
        int u30 = u(u26 + r(u29, u28, u27) + this.f10018j[1] + 1518500249, 3);
        int u31 = u(u27 + r(u30, u29, u28) + this.f10018j[5] + 1518500249, 5);
        int u32 = u(u28 + r(u31, u30, u29) + this.f10018j[9] + 1518500249, 9);
        int u33 = u(u29 + r(u32, u31, u30) + this.f10018j[13] + 1518500249, 13);
        int u34 = u(u30 + r(u33, u32, u31) + this.f10018j[2] + 1518500249, 3);
        int u35 = u(u31 + r(u34, u33, u32) + this.f10018j[6] + 1518500249, 5);
        int u36 = u(u32 + r(u35, u34, u33) + this.f10018j[10] + 1518500249, 9);
        int u37 = u(u33 + r(u36, u35, u34) + this.f10018j[14] + 1518500249, 13);
        int u38 = u(u34 + r(u37, u36, u35) + this.f10018j[3] + 1518500249, 3);
        int u39 = u(u35 + r(u38, u37, u36) + this.f10018j[7] + 1518500249, 5);
        int u40 = u(u36 + r(u39, u38, u37) + this.f10018j[11] + 1518500249, 9);
        int u41 = u(u37 + r(u40, u39, u38) + this.f10018j[15] + 1518500249, 13);
        int u42 = u(u38 + s(u41, u40, u39) + this.f10018j[0] + 1859775393, 3);
        int u43 = u(u39 + s(u42, u41, u40) + this.f10018j[8] + 1859775393, 9);
        int u44 = u(u40 + s(u43, u42, u41) + this.f10018j[4] + 1859775393, 11);
        int u45 = u(u41 + s(u44, u43, u42) + this.f10018j[12] + 1859775393, 15);
        int u46 = u(u42 + s(u45, u44, u43) + this.f10018j[2] + 1859775393, 3);
        int u47 = u(u43 + s(u46, u45, u44) + this.f10018j[10] + 1859775393, 9);
        int u48 = u(u44 + s(u47, u46, u45) + this.f10018j[6] + 1859775393, 11);
        int u49 = u(u45 + s(u48, u47, u46) + this.f10018j[14] + 1859775393, 15);
        int u50 = u(u46 + s(u49, u48, u47) + this.f10018j[1] + 1859775393, 3);
        int u51 = u(u47 + s(u50, u49, u48) + this.f10018j[9] + 1859775393, 9);
        int u52 = u(u48 + s(u51, u50, u49) + this.f10018j[5] + 1859775393, 11);
        int u53 = u(u49 + s(u52, u51, u50) + this.f10018j[13] + 1859775393, 15);
        int u54 = u(u50 + s(u53, u52, u51) + this.f10018j[3] + 1859775393, 3);
        int u55 = u(u51 + s(u54, u53, u52) + this.f10018j[11] + 1859775393, 9);
        int u56 = u(u52 + s(u55, u54, u53) + this.f10018j[7] + 1859775393, 11);
        int u57 = u(u53 + s(u56, u55, u54) + this.f10018j[15] + 1859775393, 15);
        this.f10014f += u54;
        this.f10015g += u57;
        this.f10016h += u56;
        this.f10017i += u55;
        this.f10019k = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = this.f10018j;
            if (i14 == iArr.length) {
                return;
            }
            iArr[i14] = 0;
            i14++;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f10019k > 14) {
            n();
        }
        int[] iArr = this.f10018j;
        iArr[14] = (int) j10;
        iArr[15] = (int) (j10 >>> 32);
    }

    @Override
    public void p(byte[] bArr, int i10) {
        int[] iArr = this.f10018j;
        int i11 = this.f10019k;
        this.f10019k = i11 + 1;
        iArr[i11] = org.bouncycastle.util.p.r(bArr, i10);
        if (this.f10019k == 16) {
            n();
        }
    }

    public final int q(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    public final int r(int i10, int i11, int i12) {
        return (i10 & (i11 | i12)) | (i11 & i12);
    }

    @Override
    public void reset() {
        super.reset();
        this.f10014f = 1732584193;
        this.f10015g = -271733879;
        this.f10016h = -1732584194;
        this.f10017i = 271733878;
        this.f10019k = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f10018j;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final int s(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    public final void t(C2666y c2666y) {
        super.d(c2666y);
        this.f10014f = c2666y.f10014f;
        this.f10015g = c2666y.f10015g;
        this.f10016h = c2666y.f10016h;
        this.f10017i = c2666y.f10017i;
        int[] iArr = c2666y.f10018j;
        System.arraycopy(iArr, 0, this.f10018j, 0, iArr.length);
        this.f10019k = c2666y.f10019k;
    }

    public C2666y(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f10018j = new int[16];
        Bi.r.a(Z.a(this, 64, enumC2383o));
        reset();
    }

    public C2666y(C2666y c2666y) {
        super(c2666y.f9919a);
        this.f10018j = new int[16];
        Bi.r.a(Z.a(this, 64, this.f9919a));
        t(c2666y);
    }
}
