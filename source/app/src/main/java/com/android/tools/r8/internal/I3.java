package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.V8;
import java.util.Collections;

public abstract class I3 extends AbstractC9702u6 {

    public static final boolean f40964m = true;

    public I3(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(t10, c10340xw0, c10340xw02, c10340xw03);
    }

    public abstract AbstractC5635Np a(int i10, int i11, int i12);

    @Override
    public void a(C5458Kn c5458Kn) {
        AbstractC5635Np a10;
        int b10 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        int b11 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        if (a(c5458Kn.f41765d)) {
            int b12 = c5458Kn.f41765d.b(y2(), this.f54322g);
            if (b10 != b11) {
                boolean z10 = f40964m;
                if (!z10 && !v2()) {
                    throw new AssertionError();
                }
                if (!z10 && b12 != b11) {
                    throw new AssertionError();
                }
            } else {
                b10 = b12;
            }
            int i10 = H3.f40671a[this.f52781k.ordinal()];
            if (i10 == 1) {
                a10 = b(b11, b10);
            } else if (i10 == 2) {
                a10 = c(b11, b10);
            } else if (i10 == 3) {
                a10 = d(b11, b10);
            } else if (i10 == 4) {
                a10 = e(b11, b10);
            } else {
                throw new C5417Jv0("Unexpected numeric type " + this.f52781k.name());
            }
        } else if (!c(y2())) {
            boolean z11 = f40964m;
            if (!z11 && (this instanceof C5812Qq0)) {
                throw new AssertionError();
            }
            if (!z11 && !e(y2())) {
                throw new AssertionError();
            }
            C9126qh J10 = y2().n().J();
            if (J10.x2()) {
                a10 = e(b11, b10, J10.u2());
            } else {
                if (!z11 && !P10.a(J10.f51851l)) {
                    throw new AssertionError();
                }
                a10 = d(b11, b10, J10.u2());
            }
        } else {
            int b13 = c5458Kn.f41765d.b(y2(), this.f54322g);
            int i11 = H3.f40671a[this.f52781k.ordinal()];
            if (i11 == 1) {
                a10 = a(b11, b10, b13);
            } else if (i11 == 2) {
                a10 = b(b11, b10, b13);
            } else if (i11 == 3) {
                a10 = c(b11, b10, b13);
            } else if (i11 == 4) {
                a10 = f(b11, b10, b13);
            } else {
                throw new C5417Jv0("Unexpected numeric type " + this.f52781k.name());
            }
        }
        c5458Kn.a(this, a10);
    }

    public abstract AbstractC5635Np b(int i10, int i11);

    public abstract AbstractC5635Np b(int i10, int i11, int i12);

    public abstract AbstractC5635Np c(int i10, int i11);

    public abstract AbstractC5635Np c(int i10, int i11, int i12);

    @Override
    public boolean c(C10340xw0 c10340xw0) {
        boolean z10 = f40964m;
        if (!z10 && (this instanceof C5812Qq0)) {
            throw new AssertionError();
        }
        if (c10340xw0 == ((C10340xw0) this.f54321f.get(0))) {
            return true;
        }
        if (z10 || c10340xw0 == y2()) {
            return !e(c10340xw0);
        }
        throw new AssertionError();
    }

    public abstract AbstractC5635Np d(int i10, int i11);

    public abstract AbstractC5635Np d(int i10, int i11, int i12);

    public abstract AbstractC5635Np e(int i10, int i11);

    public abstract AbstractC5635Np e(int i10, int i11, int i12);

    public abstract AbstractC5635Np f(int i10, int i11, int i12);

    @Override
    public final boolean l1() {
        return true;
    }

    @Override
    public final I3 w() {
        return this;
    }

    public abstract V8.a z2();

    @Override
    public F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        long doubleToLongBits;
        int floatToIntBits;
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        F1 a10 = m12.a((C10340xw0) this.f54321f.get(0));
        F1 a11 = m12.a(y2());
        a10.getClass();
        if (a10 instanceof C5341Im0) {
            a11.getClass();
            if (a11 instanceof C5341Im0) {
                C5341Im0 m10 = a10.m();
                C5341Im0 m11 = a11.m();
                T10 t10 = this.f52781k;
                if (t10 == T10.f44369e) {
                    floatToIntBits = a((int) m10.f41207c, (int) m11.f41207c);
                } else {
                    if (t10 == T10.f44370f) {
                        doubleToLongBits = a(m10.f41207c, m11.f41207c);
                    } else if (t10 == T10.f44371g) {
                        floatToIntBits = Float.floatToIntBits(a(Float.intBitsToFloat((int) m10.f41207c), Float.intBitsToFloat((int) m11.f41207c)));
                    } else {
                        if (!f40964m && t10 != T10.f44372h) {
                            throw new AssertionError();
                        }
                        doubleToLongBits = Double.doubleToLongBits(a(Double.longBitsToDouble(m10.f41207c), Double.longBitsToDouble(m11.f41207c)));
                    }
                    return c4798y.f38427t.a(doubleToLongBits, a());
                }
                doubleToLongBits = floatToIntBits;
                return c4798y.f38427t.a(doubleToLongBits, a());
            }
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new V8(z2(), this.f52781k), this);
    }

    @Override
    public void a(PS ps) {
        V8.a z22 = z2();
        T10 t10 = this.f52781k;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        C10340xw0 y22 = y2();
        ps.getClass();
        boolean z10 = PS.f43219u;
        if (!z10 && 96 != V8.a(V8.a.f44967b, T10.f44369e)) {
            throw new AssertionError();
        }
        if (!z10 && 115 != V8.a(V8.a.f44971f, T10.f44372h)) {
            throw new AssertionError();
        }
        ps.a(V8.a(z22, t10), Collections.EMPTY_LIST, AbstractC7552hC.a(c10340xw0, y22));
    }
}
