package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7268fZ extends AbstractC5359Iv0 {

    public static final boolean f48001l = true;

    public final T10 f48002k;

    public C7268fZ(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
        this.f48002k = t10;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C7268fZ) && abstractC10561zE.s0().f48002k == this.f48002k;
    }

    @Override
    public final int r2() {
        return 46;
    }

    @Override
    public final C7268fZ s0() {
        return this;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c7321fr;
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        int b11 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        int i10 = AbstractC7101eZ.f47708a[this.f48002k.ordinal()];
        if (i10 == 1) {
            c7321fr = new C7321fr(b10, b11);
        } else if (i10 == 2) {
            c7321fr = new C7488gr(b10, b11);
        } else if (i10 == 3) {
            c7321fr = new C7154er(b10, b11);
        } else if (i10 == 4) {
            c7321fr = new C6987dr(b10, b11);
        } else {
            throw new C5417Jv0("Unexpected type " + ((Object) this.f48002k));
        }
        c5458Kn.a(this, c7321fr);
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        long doubleToLongBits;
        int floatToIntBits;
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        F1 a10 = m12.a((C10340xw0) this.f54321f.get(0));
        a10.getClass();
        if (a10 instanceof C5341Im0) {
            C5341Im0 m10 = a10.m();
            T10 t10 = this.f48002k;
            if (t10 == T10.f44369e) {
                floatToIntBits = -((int) m10.f41207c);
            } else {
                if (t10 == T10.f44370f) {
                    doubleToLongBits = -m10.f41207c;
                } else if (t10 == T10.f44371g) {
                    floatToIntBits = Float.floatToIntBits(-Float.intBitsToFloat((int) m10.f41207c));
                } else {
                    if (!f48001l && t10 != T10.f44372h) {
                        throw new AssertionError();
                    }
                    doubleToLongBits = Double.doubleToLongBits(-Double.longBitsToDouble(m10.f41207c));
                }
                return c4798y.f38427t.a(doubleToLongBits, a());
            }
            doubleToLongBits = floatToIntBits;
            return c4798y.f38427t.a(doubleToLongBits, a());
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9939va(this.f48002k), this);
    }

    @Override
    public final void a(PS ps) {
        ps.a(this.f48002k, (C10340xw0) this.f54321f.get(0));
    }
}
