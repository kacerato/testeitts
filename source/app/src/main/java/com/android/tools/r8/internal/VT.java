package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public abstract class VT extends AbstractC9702u6 {

    public static final boolean f45061m = true;

    public VT(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    @Override
    public final boolean W1() {
        return true;
    }

    public abstract AbstractC5635Np a(int i10, int i11, int i12);

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np a10;
        int b10 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        int b11 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        if (a(c5458Kn.f41765d)) {
            int b12 = c5458Kn.f41765d.b(y2(), this.f54322g);
            if (b10 != b11) {
                boolean z10 = f45061m;
                if (!z10 && !v2()) {
                    throw new AssertionError();
                }
                if (!z10 && b12 != b11) {
                    throw new AssertionError();
                }
            } else {
                b10 = b12;
            }
            int i10 = UT.f44759a[this.f52781k.ordinal()];
            if (i10 == 1) {
                a10 = b(b11, b10);
            } else if (i10 == 2) {
                a10 = c(b11, b10);
            } else {
                throw new C5417Jv0("Unexpected type " + ((Object) this.f52781k));
            }
        } else if (!c(y2())) {
            boolean z11 = f45061m;
            if (!z11 && !e(y2())) {
                throw new AssertionError();
            }
            C9126qh J10 = y2().n().J();
            if (J10.x2()) {
                a10 = c(b11, b10, J10.u2());
            } else {
                if (!z11 && !P10.a(J10.f51851l)) {
                    throw new AssertionError();
                }
                a10 = b(b11, b10, J10.u2());
            }
        } else {
            int b13 = c5458Kn.f41765d.b(y2(), this.f54322g);
            int i11 = UT.f44759a[this.f52781k.ordinal()];
            if (i11 == 1) {
                a10 = a(b11, b10, b13);
            } else if (i11 == 2) {
                a10 = d(b11, b10, b13);
            } else {
                throw new C5417Jv0("Unexpected type " + ((Object) this.f52781k));
            }
        }
        c5458Kn.a(this, a10);
    }

    public abstract AbstractC5635Np b(int i10, int i11);

    public abstract AbstractC5635Np b(int i10, int i11, int i12);

    public abstract AbstractC5635Np c(int i10, int i11);

    public abstract AbstractC5635Np c(int i10, int i11, int i12);

    @Override
    public final boolean c(C10340xw0 c10340xw0) {
        if (c10340xw0 == ((C10340xw0) this.f54321f.get(0))) {
            return true;
        }
        if (f45061m || c10340xw0 == y2()) {
            return !e(c10340xw0);
        }
        throw new AssertionError();
    }

    public abstract AbstractC5635Np d(int i10, int i11, int i12);

    @Override
    public final VT n0() {
        return this;
    }

    public abstract EnumC9105qa z2();

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        long j10;
        long a10;
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        F1 a11 = m12.a((C10340xw0) this.f54321f.get(0));
        F1 a12 = m12.a(y2());
        a11.getClass();
        if (a11 instanceof C5341Im0) {
            a12.getClass();
            if (a12 instanceof C5341Im0) {
                C5341Im0 m10 = a11.m();
                C5341Im0 m11 = a12.m();
                T10 t10 = this.f52781k;
                if (t10 == T10.f44369e) {
                    a10 = a((int) m10.f41207c, (int) m11.f41207c);
                } else {
                    if (!f45061m && t10 != T10.f44370f) {
                        throw new AssertionError();
                    }
                    if (!(this instanceof C5686Ol0) && !(this instanceof C5918Sl0) && !(this instanceof C8504mw0)) {
                        j10 = m11.f41207c;
                    } else {
                        j10 = (int) m11.f41207c;
                    }
                    a10 = a(m10.f41207c, j10);
                }
                return c4798y.f38427t.a(a10, a());
            }
        }
        if (this.f52781k == T10.f44369e) {
            return a(c4798y, a11, a12);
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9271ra(z2(), this.f52781k), this);
    }

    @Override
    public final void a(PS ps) {
        EnumC9105qa z22 = z2();
        T10 t10 = this.f52781k;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        C10340xw0 y22 = y2();
        ps.getClass();
        boolean z10 = PS.f43219u;
        if (!z10 && 120 != C9271ra.a(EnumC9105qa.f51807b, T10.f44369e)) {
            throw new AssertionError();
        }
        if (!z10 && 131 != C9271ra.a(EnumC9105qa.f51812g, T10.f44370f)) {
            throw new AssertionError();
        }
        ps.a(C9271ra.a(z22, t10), Collections.EMPTY_LIST, AbstractC7552hC.a(c10340xw0, y22));
    }
}
