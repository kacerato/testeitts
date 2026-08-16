package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class F extends AbstractC2658p {

    public static final int f9485l = 16;

    public int f9486f;

    public int f9487g;

    public int f9488h;

    public int f9489i;

    public int[] f9490j;

    public int f9491k;

    public F() {
        this(EnumC2383o.ANY);
    }

    public final int A(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    public final int B(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    public final int C(int i10, int i11, int i12) {
        return (i10 | (~i11)) ^ i12;
    }

    public final int D(int i10, int i11, int i12) {
        return (i10 & i12) | (i11 & (~i12));
    }

    @Override
    public String b() {
        return "RIPEMD128";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.m(this.f9486f, bArr, i10);
        org.bouncycastle.util.p.m(this.f9487g, bArr, i10 + 4);
        org.bouncycastle.util.p.m(this.f9488h, bArr, i10 + 8);
        org.bouncycastle.util.p.m(this.f9489i, bArr, i10 + 12);
        reset();
        return 16;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new F(this);
    }

    @Override
    public int f() {
        return 16;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        z((F) nVar);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.b(this, this.f9919a);
    }

    @Override
    public void n() {
        int i10 = this.f9486f;
        int i11 = this.f9487g;
        int i12 = this.f9488h;
        int i13 = this.f9489i;
        int q10 = q(i10, i11, i12, i13, this.f9490j[0], 11);
        int q11 = q(i13, q10, i11, i12, this.f9490j[1], 14);
        int q12 = q(i12, q11, q10, i11, this.f9490j[2], 15);
        int q13 = q(i11, q12, q11, q10, this.f9490j[3], 12);
        int q14 = q(q10, q13, q12, q11, this.f9490j[4], 5);
        int q15 = q(q11, q14, q13, q12, this.f9490j[5], 8);
        int q16 = q(q12, q15, q14, q13, this.f9490j[6], 7);
        int q17 = q(q13, q16, q15, q14, this.f9490j[7], 9);
        int q18 = q(q14, q17, q16, q15, this.f9490j[8], 11);
        int q19 = q(q15, q18, q17, q16, this.f9490j[9], 13);
        int q20 = q(q16, q19, q18, q17, this.f9490j[10], 14);
        int q21 = q(q17, q20, q19, q18, this.f9490j[11], 15);
        int q22 = q(q18, q21, q20, q19, this.f9490j[12], 6);
        int q23 = q(q19, q22, q21, q20, this.f9490j[13], 7);
        int q24 = q(q20, q23, q22, q21, this.f9490j[14], 9);
        int q25 = q(q21, q24, q23, q22, this.f9490j[15], 8);
        int r10 = r(q22, q25, q24, q23, this.f9490j[7], 7);
        int r11 = r(q23, r10, q25, q24, this.f9490j[4], 6);
        int r12 = r(q24, r11, r10, q25, this.f9490j[13], 8);
        int r13 = r(q25, r12, r11, r10, this.f9490j[1], 13);
        int r14 = r(r10, r13, r12, r11, this.f9490j[10], 11);
        int r15 = r(r11, r14, r13, r12, this.f9490j[6], 9);
        int r16 = r(r12, r15, r14, r13, this.f9490j[15], 7);
        int r17 = r(r13, r16, r15, r14, this.f9490j[3], 15);
        int r18 = r(r14, r17, r16, r15, this.f9490j[12], 7);
        int r19 = r(r15, r18, r17, r16, this.f9490j[0], 12);
        int r20 = r(r16, r19, r18, r17, this.f9490j[9], 15);
        int r21 = r(r17, r20, r19, r18, this.f9490j[5], 9);
        int r22 = r(r18, r21, r20, r19, this.f9490j[2], 11);
        int r23 = r(r19, r22, r21, r20, this.f9490j[14], 7);
        int r24 = r(r20, r23, r22, r21, this.f9490j[11], 13);
        int r25 = r(r21, r24, r23, r22, this.f9490j[8], 12);
        int s10 = s(r22, r25, r24, r23, this.f9490j[3], 11);
        int s11 = s(r23, s10, r25, r24, this.f9490j[10], 13);
        int s12 = s(r24, s11, s10, r25, this.f9490j[14], 6);
        int s13 = s(r25, s12, s11, s10, this.f9490j[4], 7);
        int s14 = s(s10, s13, s12, s11, this.f9490j[9], 14);
        int s15 = s(s11, s14, s13, s12, this.f9490j[15], 9);
        int s16 = s(s12, s15, s14, s13, this.f9490j[8], 13);
        int s17 = s(s13, s16, s15, s14, this.f9490j[1], 15);
        int s18 = s(s14, s17, s16, s15, this.f9490j[2], 14);
        int s19 = s(s15, s18, s17, s16, this.f9490j[7], 8);
        int s20 = s(s16, s19, s18, s17, this.f9490j[0], 13);
        int s21 = s(s17, s20, s19, s18, this.f9490j[6], 6);
        int s22 = s(s18, s21, s20, s19, this.f9490j[13], 5);
        int s23 = s(s19, s22, s21, s20, this.f9490j[11], 12);
        int s24 = s(s20, s23, s22, s21, this.f9490j[5], 7);
        int s25 = s(s21, s24, s23, s22, this.f9490j[12], 5);
        int t10 = t(s22, s25, s24, s23, this.f9490j[1], 11);
        int t11 = t(s23, t10, s25, s24, this.f9490j[9], 12);
        int t12 = t(s24, t11, t10, s25, this.f9490j[11], 14);
        int t13 = t(s25, t12, t11, t10, this.f9490j[10], 15);
        int t14 = t(t10, t13, t12, t11, this.f9490j[0], 14);
        int t15 = t(t11, t14, t13, t12, this.f9490j[8], 15);
        int t16 = t(t12, t15, t14, t13, this.f9490j[12], 9);
        int t17 = t(t13, t16, t15, t14, this.f9490j[4], 8);
        int t18 = t(t14, t17, t16, t15, this.f9490j[13], 9);
        int t19 = t(t15, t18, t17, t16, this.f9490j[3], 14);
        int t20 = t(t16, t19, t18, t17, this.f9490j[7], 5);
        int t21 = t(t17, t20, t19, t18, this.f9490j[15], 6);
        int t22 = t(t18, t21, t20, t19, this.f9490j[14], 8);
        int t23 = t(t19, t22, t21, t20, this.f9490j[5], 6);
        int t24 = t(t20, t23, t22, t21, this.f9490j[6], 5);
        int t25 = t(t21, t24, t23, t22, this.f9490j[2], 12);
        int x10 = x(i10, i11, i12, i13, this.f9490j[5], 8);
        int x11 = x(i13, x10, i11, i12, this.f9490j[14], 9);
        int x12 = x(i12, x11, x10, i11, this.f9490j[7], 9);
        int x13 = x(i11, x12, x11, x10, this.f9490j[0], 11);
        int x14 = x(x10, x13, x12, x11, this.f9490j[9], 13);
        int x15 = x(x11, x14, x13, x12, this.f9490j[2], 15);
        int x16 = x(x12, x15, x14, x13, this.f9490j[11], 15);
        int x17 = x(x13, x16, x15, x14, this.f9490j[4], 5);
        int x18 = x(x14, x17, x16, x15, this.f9490j[13], 7);
        int x19 = x(x15, x18, x17, x16, this.f9490j[6], 7);
        int x20 = x(x16, x19, x18, x17, this.f9490j[15], 8);
        int x21 = x(x17, x20, x19, x18, this.f9490j[8], 11);
        int x22 = x(x18, x21, x20, x19, this.f9490j[1], 14);
        int x23 = x(x19, x22, x21, x20, this.f9490j[10], 14);
        int x24 = x(x20, x23, x22, x21, this.f9490j[3], 12);
        int x25 = x(x21, x24, x23, x22, this.f9490j[12], 6);
        int w10 = w(x22, x25, x24, x23, this.f9490j[6], 9);
        int w11 = w(x23, w10, x25, x24, this.f9490j[11], 13);
        int w12 = w(x24, w11, w10, x25, this.f9490j[3], 15);
        int w13 = w(x25, w12, w11, w10, this.f9490j[7], 7);
        int w14 = w(w10, w13, w12, w11, this.f9490j[0], 12);
        int w15 = w(w11, w14, w13, w12, this.f9490j[13], 8);
        int w16 = w(w12, w15, w14, w13, this.f9490j[5], 9);
        int w17 = w(w13, w16, w15, w14, this.f9490j[10], 11);
        int w18 = w(w14, w17, w16, w15, this.f9490j[14], 7);
        int w19 = w(w15, w18, w17, w16, this.f9490j[15], 7);
        int w20 = w(w16, w19, w18, w17, this.f9490j[8], 12);
        int w21 = w(w17, w20, w19, w18, this.f9490j[12], 7);
        int w22 = w(w18, w21, w20, w19, this.f9490j[4], 6);
        int w23 = w(w19, w22, w21, w20, this.f9490j[9], 15);
        int w24 = w(w20, w23, w22, w21, this.f9490j[1], 13);
        int w25 = w(w21, w24, w23, w22, this.f9490j[2], 11);
        int v10 = v(w22, w25, w24, w23, this.f9490j[15], 9);
        int v11 = v(w23, v10, w25, w24, this.f9490j[5], 7);
        int v12 = v(w24, v11, v10, w25, this.f9490j[1], 15);
        int v13 = v(w25, v12, v11, v10, this.f9490j[3], 11);
        int v14 = v(v10, v13, v12, v11, this.f9490j[7], 8);
        int v15 = v(v11, v14, v13, v12, this.f9490j[14], 6);
        int v16 = v(v12, v15, v14, v13, this.f9490j[6], 6);
        int v17 = v(v13, v16, v15, v14, this.f9490j[9], 14);
        int v18 = v(v14, v17, v16, v15, this.f9490j[11], 12);
        int v19 = v(v15, v18, v17, v16, this.f9490j[8], 13);
        int v20 = v(v16, v19, v18, v17, this.f9490j[12], 5);
        int v21 = v(v17, v20, v19, v18, this.f9490j[2], 14);
        int v22 = v(v18, v21, v20, v19, this.f9490j[10], 13);
        int v23 = v(v19, v22, v21, v20, this.f9490j[0], 13);
        int v24 = v(v20, v23, v22, v21, this.f9490j[4], 7);
        int v25 = v(v21, v24, v23, v22, this.f9490j[13], 5);
        int u10 = u(v22, v25, v24, v23, this.f9490j[8], 15);
        int u11 = u(v23, u10, v25, v24, this.f9490j[6], 5);
        int u12 = u(v24, u11, u10, v25, this.f9490j[4], 8);
        int u13 = u(v25, u12, u11, u10, this.f9490j[1], 11);
        int u14 = u(u10, u13, u12, u11, this.f9490j[3], 14);
        int u15 = u(u11, u14, u13, u12, this.f9490j[11], 14);
        int u16 = u(u12, u15, u14, u13, this.f9490j[15], 6);
        int u17 = u(u13, u16, u15, u14, this.f9490j[0], 14);
        int u18 = u(u14, u17, u16, u15, this.f9490j[5], 6);
        int u19 = u(u15, u18, u17, u16, this.f9490j[12], 9);
        int u20 = u(u16, u19, u18, u17, this.f9490j[2], 12);
        int u21 = u(u17, u20, u19, u18, this.f9490j[13], 9);
        int u22 = u(u18, u21, u20, u19, this.f9490j[9], 12);
        int u23 = u(u19, u22, u21, u20, this.f9490j[7], 5);
        int u24 = u(u20, u23, u22, u21, this.f9490j[10], 15);
        int u25 = u(u21, u24, u23, u22, this.f9490j[14], 8);
        int i14 = u23 + t24 + this.f9487g;
        this.f9487g = this.f9488h + t23 + u22;
        this.f9488h = this.f9489i + t22 + u25;
        this.f9489i = this.f9486f + t25 + u24;
        this.f9486f = i14;
        this.f9491k = 0;
        int i15 = 0;
        while (true) {
            int[] iArr = this.f9490j;
            if (i15 == iArr.length) {
                return;
            }
            iArr[i15] = 0;
            i15++;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f9491k > 14) {
            n();
        }
        int[] iArr = this.f9490j;
        iArr[14] = (int) j10;
        iArr[15] = (int) (j10 >>> 32);
    }

    @Override
    public void p(byte[] bArr, int i10) {
        int[] iArr = this.f9490j;
        int i11 = this.f9491k;
        this.f9491k = i11 + 1;
        iArr[i11] = org.bouncycastle.util.p.r(bArr, i10);
        if (this.f9491k == 16) {
            n();
        }
    }

    public final int q(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + A(i11, i12, i13) + i14, i15);
    }

    public final int r(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + B(i11, i12, i13) + i14 + 1518500249, i15);
    }

    @Override
    public void reset() {
        super.reset();
        this.f9486f = 1732584193;
        this.f9487g = -271733879;
        this.f9488h = -1732584194;
        this.f9489i = 271733878;
        this.f9491k = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f9490j;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final int s(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + C(i11, i12, i13) + i14 + 1859775393, i15);
    }

    public final int t(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(((i10 + D(i11, i12, i13)) + i14) - 1894007588, i15);
    }

    public final int u(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + A(i11, i12, i13) + i14, i15);
    }

    public final int v(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + B(i11, i12, i13) + i14 + 1836072691, i15);
    }

    public final int w(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + C(i11, i12, i13) + i14 + 1548603684, i15);
    }

    public final int x(int i10, int i11, int i12, int i13, int i14, int i15) {
        return y(i10 + D(i11, i12, i13) + i14 + 1352829926, i15);
    }

    public final int y(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    public final void z(F f10) {
        super.d(f10);
        this.f9486f = f10.f9486f;
        this.f9487g = f10.f9487g;
        this.f9488h = f10.f9488h;
        this.f9489i = f10.f9489i;
        int[] iArr = f10.f9490j;
        System.arraycopy(iArr, 0, this.f9490j, 0, iArr.length);
        this.f9491k = f10.f9491k;
    }

    public F(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f9490j = new int[16];
        Bi.r.a(Z.a(this, 128, enumC2383o));
        reset();
    }

    public F(F f10) {
        super(f10.f9919a);
        this.f9490j = new int[16];
        Bi.r.a(Z.a(this, 128, this.f9919a));
        z(f10);
    }
}
