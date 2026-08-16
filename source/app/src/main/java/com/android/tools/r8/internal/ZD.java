package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.function.BiConsumer;

public final class ZD extends AbstractC5881Rw {

    public static final boolean f46200m = true;

    public final TD f46201i;

    public final VD f46202j;

    public final com.android.tools.r8.graph.H0 f46203k;

    public final QJ f46204l;

    public ZD(C4798y c4798y, C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, com.android.tools.r8.graph.H0 h02, QJ qj2) {
        super(c4798y, c7215fB, abstractC8028k40);
        this.f46201i = new TD();
        this.f46202j = c4798y.f38431x;
        this.f46203k = h02;
        this.f46204l = qj2;
    }

    @Override
    public final ZD a() {
        return this;
    }

    public final void b(com.android.tools.r8.graph.F0 f02, SD sd2) {
        if (sd2.isUnknown()) {
            return;
        }
        f02.getClass();
        if (f02 instanceof com.android.tools.r8.graph.F5) {
            com.android.tools.r8.graph.F5 W10 = f02.W();
            if (!this.f44027a.a(W10).a(this.f44027a, W10)) {
                return;
            }
        }
        TD td2 = this.f46201i;
        td2.getClass();
        td2.a(f02.getReference(), sd2);
    }

    public final void c() {
        if (this.f46203k.p() == this.f44029c.p()) {
            return;
        }
        C4516j1 d10 = this.f46203k.d();
        d10.L0();
        d10.f37320m.a(this.f46204l).b().a(this.f44027a, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ZD.this.a((com.android.tools.r8.graph.F0) obj, (SD) obj2);
            }
        });
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.F5 f52) {
        return !f52.getAccessFlags().n() && f52.p() == this.f44029c.p();
    }

    @Override
    public final void a(com.android.tools.r8.graph.F0 f02, AbstractC7670hw abstractC7670hw, C10340xw0 c10340xw0) {
        C9225rE m10 = abstractC7670hw.m();
        boolean z10 = true;
        if (!f02.getAccessFlags().e() && !((C11245i) this.f44027a.f()).a(f02, this.f44029c.d())) {
            if (((C11245i) this.f44027a.f()).c(f02)) {
                if (this.f46204l.B2().s0() == this.f44029c.p()) {
                    W5 b10 = m10.b();
                    W5 b11 = this.f46204l.b();
                    if (b10 != b11) {
                        if (this.f44031e == null) {
                            this.f44031e = new C6993dt(this.f44028b, 1);
                        }
                        z10 = this.f44031e.a(b10, b11);
                    } else {
                        Y5 it = b10.l().iterator();
                        while (it.hasNext()) {
                            AbstractC10561zE next = it.next();
                            if (next == m10) {
                                z10 = false;
                                break;
                            } else if (next == this.f46204l) {
                            }
                        }
                        throw new C5417Jv0();
                    }
                }
            } else {
                if (m10.b().v().isEmpty()) {
                    W5 b12 = m10.b();
                    AbstractC10561zE Y02 = m10.Y0();
                    b12.getClass();
                    Y5 y52 = new Y5(b12, Y02);
                    while (y52.hasNext()) {
                        if (y52.next().b(this.f44027a, this.f44029c).a(f02)) {
                        }
                    }
                }
                z10 = false;
                break;
            }
        }
        if (z10) {
            b(f02, a(f02, c10340xw0));
        }
    }

    public final SD a(com.android.tools.r8.graph.F0 f02, C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (i10.d(new NN0())) {
            return this.f46202j.a(i10.f53886c.v().b(true));
        }
        F1 a10 = c10340xw0.a(this.f44027a, this.f44029c, M1.f42128a);
        if (a10.r()) {
            return a10.w();
        }
        com.android.tools.r8.graph.M2 type = f02.getReference().getType();
        if (type.I0()) {
            C6949de a11 = c10340xw0.a(this.f44027a, (AbstractC8999pu0) null, C8854p10.h());
            AbstractC8999pu0 b10 = c10340xw0.b(this.f44027a);
            AbstractC8999pu0 a12 = AbstractC8999pu0.a(type, C8854p10.h(), (C4798y<?>) this.f44027a);
            if (a11 != null || !b10.equals(a12)) {
                this.f46202j.getClass();
                return new YD(a11, b10);
            }
        }
        return C9335rv0.f52224a;
    }

    public final void a(com.android.tools.r8.graph.F0 f02, SD sd2) {
        if (f02.b(this.f44027a) || ((C11245i) this.f44027a.f()).a(f02, this.f46203k.d())) {
            if (sd2.s()) {
                b(f02, a(f02, this.f46204l.b(sd2.q().f43848a)));
            } else {
                if (!f46200m && !sd2.r() && !sd2.h()) {
                    throw new AssertionError();
                }
                TD td2 = this.f46201i;
                td2.getClass();
                td2.a(f02.getReference(), sd2);
            }
        }
    }
}
