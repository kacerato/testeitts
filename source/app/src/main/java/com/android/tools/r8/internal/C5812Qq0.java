package com.android.tools.r8.internal;

import com.android.tools.r8.internal.V8;

public final class C5812Qq0 extends I3 {

    public static final boolean f43738n = true;

    public C5812Qq0(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final C5812Qq0 P0() {
        return this;
    }

    @Override
    public final double a(double d10, double d11) {
        return d10 - d11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11, int i12) {
        return new C10327xs(i10, i11, i12);
    }

    @Override
    public final boolean c(C10340xw0 c10340xw0) {
        if (((C10340xw0) this.f54321f.get(0)) == y2()) {
            return true;
        }
        if (c10340xw0 == ((C10340xw0) this.f54321f.get(0))) {
            return !e(c10340xw0);
        }
        if (!f43738n && c10340xw0 != y2()) {
            throw new AssertionError();
        }
        if (this.f52781k == T10.f44369e && c10340xw0.M()) {
            long j10 = -c10340xw0.n().J().f51851l;
            if (-32768 <= j10 && j10 <= 32767 && !e((C10340xw0) this.f54321f.get(0))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11) {
        return new C10494ys(i10, i11);
    }

    @Override
    public final AbstractC5635Np e(int i10, int i11) {
        return new C4888As(i10, i11);
    }

    @Override
    public final AbstractC5635Np f(int i10, int i11, int i12) {
        return new C4946Bs(i10, i11, i12);
    }

    @Override
    public final int r2() {
        return 63;
    }

    @Override
    public final boolean v2() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
    
        if (r0 <= 32767) goto L30;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int w2() {
        if (!c((C10340xw0) this.f54321f.get(0))) {
            if (f43738n || e((C10340xw0) this.f54321f.get(0))) {
                return ((C10340xw0) this.f54321f.get(0)).n().J().x2() ? 255 : 15;
            }
            throw new AssertionError();
        }
        if (c(y2())) {
            return 255;
        }
        if (!f43738n) {
            C10340xw0 y22 = y2();
            if (this.f52781k == T10.f44369e && y22.M()) {
                long j10 = -y22.n().J().f51851l;
                if (-32768 <= j10) {
                }
            }
            throw new AssertionError();
        }
        long j11 = -y2().n().J().f51851l;
        return (-128 > j11 || j11 > 127) ? 15 : 255;
    }

    @Override
    public final V8.a z2() {
        return V8.a.f44968c;
    }

    @Override
    public final float a(float f10, float f11) {
        return f10 - f11;
    }

    @Override
    public final AbstractC5635Np b(int i10, int i11) {
        return new C9826us(i10, i11);
    }

    @Override
    public final AbstractC5635Np d(int i10, int i11, int i12) {
        throw new C5417Jv0("Unsupported instruction SubIntLit16");
    }

    @Override
    public final AbstractC5635Np e(int i10, int i11, int i12) {
        throw new C5417Jv0("Unsupported instruction SubIntLit8");
    }

    @Override
    public final int a(int i10, int i11) {
        return i10 - i11;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C5812Qq0) && abstractC10561zE.P0().f52781k == this.f52781k;
    }

    @Override
    public final long a(long j10, long j11) {
        return j10 - j11;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final AbstractC5635Np a(int i10, int i11, int i12) {
        return new C9993vs(i10, i11, i12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bc, code lost:
    
        if (r7 <= 32767) goto L41;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c10661zs;
        if (!a(c5458Kn.f41765d)) {
            T10 t10 = this.f52781k;
            T10 t102 = T10.f44369e;
            if (t10 == t102) {
                if (!c((C10340xw0) this.f54321f.get(0))) {
                    boolean z10 = f43738n;
                    if (!z10 && !e((C10340xw0) this.f54321f.get(0))) {
                        throw new AssertionError();
                    }
                    C9126qh J10 = ((C10340xw0) this.f54321f.get(0)).n().J();
                    int b10 = c5458Kn.f41765d.b(y2(), this.f54322g);
                    int b11 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
                    if (J10.x2()) {
                        c10661zs = new C5813Qr(b11, b10, J10.u2());
                    } else {
                        if (!z10 && !P10.a(J10.f51851l)) {
                            throw new AssertionError();
                        }
                        c10661zs = new C5755Pr(b11, b10, J10.u2());
                    }
                } else if (!c(y2())) {
                    boolean z11 = f43738n;
                    if (!z11) {
                        C10340xw0 y22 = y2();
                        if (this.f52781k == t102 && y22.M()) {
                            long j10 = -y22.n().J().f51851l;
                            if (-32768 <= j10) {
                            }
                        }
                        throw new AssertionError();
                    }
                    int b12 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
                    if (!z11 && !c((C10340xw0) this.f54321f.get(0))) {
                        throw new AssertionError();
                    }
                    int b13 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
                    C9126qh J11 = y2().n().J();
                    long j11 = -J11.f51851l;
                    if (-128 <= j11 && j11 <= 127) {
                        c10661zs = new C6092Vm(b12, b13, -J11.u2());
                    } else {
                        if (!z11 && (-32768 > j11 || j11 > 32767)) {
                            throw new AssertionError();
                        }
                        c10661zs = new C6035Um(b12, b13, -J11.u2());
                    }
                } else {
                    if (!f43738n && this.f52781k != t102) {
                        throw new AssertionError();
                    }
                    c10661zs = new C10661zs(c5458Kn.f41765d.b(this.f54320e, this.f54322g), c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g), c5458Kn.f41765d.b(y2(), this.f54322g));
                }
                c5458Kn.a(this, c10661zs);
                return;
            }
        }
        super.a(c5458Kn);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11, int i12) {
        return new C10661zs(i10, i11, i12);
    }

    @Override
    public final AbstractC5635Np c(int i10, int i11) {
        return new C10160ws(i10, i11);
    }
}
