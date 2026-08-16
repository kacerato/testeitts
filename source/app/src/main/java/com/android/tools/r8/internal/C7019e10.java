package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7019e10 extends AbstractC5359Iv0 {

    public static final boolean f47578l = true;

    public final T10 f47579k;

    public C7019e10(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
        this.f47579k = t10;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C7019e10) && abstractC10561zE.y0().f47579k == this.f47579k;
    }

    @Override
    public final int r2() {
        return 51;
    }

    @Override
    public final C7019e10 y0() {
        return this;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        long j10;
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        F1 a10 = m12.a((C10340xw0) this.f54321f.get(0));
        a10.getClass();
        if (a10 instanceof C5341Im0) {
            C5341Im0 m10 = a10.m();
            T10 t10 = this.f47579k;
            if (t10 == T10.f44369e) {
                j10 = ~((int) m10.f41207c);
            } else {
                if (!f47578l && t10 != T10.f44370f) {
                    throw new AssertionError();
                }
                j10 = ~m10.f41207c;
            }
            return c4798y.f38427t.a(j10, a());
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c8321lr;
        if (!f47578l) {
            C8570nJ c8570nJ = c5458Kn.f41766e;
            c8570nJ.getClass();
            if (!c8570nJ.c(C2.L)) {
                throw new AssertionError();
            }
        }
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        int b11 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        int i10 = AbstractC6853d10.f47253a[this.f47579k.ordinal()];
        if (i10 == 1) {
            c8321lr = new C8321lr(b10, b11);
        } else if (i10 == 2) {
            c8321lr = new C8488mr(b10, b11);
        } else {
            throw new C5417Jv0("Unexpected type " + ((Object) this.f47579k));
        }
        c5458Kn.a(this, c8321lr);
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(PS ps) {
        ps.b(this.f47579k, (C10340xw0) this.f54321f.get(0));
    }
}
