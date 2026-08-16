package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.V8;

public final class C7786if0 extends I3 {
    public C7786if0(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final C7786if0 E0() {
        return this;
    }

    @Override
    public final double a(double d10, double d11) {
        return d10 % d11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11, int i12) {
        return new C5118Er(i10, i11, i12);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11, int i12) {
        return new C5234Gr(i10, i11, i12);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11) {
        return new C5176Fr(i10, i11);
    }

    @Override
    public final AbstractC5635Np e(int i10, int i11) {
        return new C5408Jr(i10, i11);
    }

    @Override
    public final AbstractC5635Np f(int i10, int i11, int i12) {
        return new C5466Kr(i10, i11, i12);
    }

    @Override
    public final boolean o() {
        T10 t10 = this.f52781k;
        return (t10 == T10.f44372h || t10 == T10.f44371g) ? false : true;
    }

    @Override
    public final int r2() {
        return 55;
    }

    @Override
    public final boolean v2() {
        return false;
    }

    @Override
    public final V8.a z2() {
        return V8.a.f44971f;
    }

    @Override
    public final float a(float f10, float f11) {
        return f10 % f11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11) {
        return new C4944Br(i10, i11);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11) {
        return new C5060Dr(i10, i11);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11, int i12) {
        return new C5292Hr(i10, i11, i12);
    }

    @Override
    public final AbstractC5635Np e(int i10, int i11, int i12) {
        return new C5350Ir(i10, i11, i12);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C7786if0) && abstractC10561zE.E0().f52781k == this.f52781k;
    }

    @Override
    public final AbstractC5635Np a(int i10, int i11, int i12) {
        return new C5002Cr(i10, i11, i12);
    }

    @Override
    public final int a(int i10, int i11) {
        return i10 % i11;
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 % j11;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (!o()) {
            return false;
        }
        F1 a10 = m12.a(y2());
        a10.getClass();
        if (!(a10 instanceof C5341Im0) || a10.Z()) {
            return !(a10 instanceof C5392Jj) || a10.H().f41467b == 0;
        }
        return false;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (!m12.a(y2()).Z()) {
            return super.a(c4798y, h52, m12);
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
