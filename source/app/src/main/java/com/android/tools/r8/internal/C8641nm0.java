package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.Optional;
import java.util.function.BiFunction;

public final class C8641nm0 extends AbstractC4572m0 {

    public static final boolean f51068h = true;

    public final C4798y f51069e;

    public final AbstractC5308Hz f51070f;

    public final C8808om0 f51071g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8641nm0(C8808om0 c8808om0, C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52);
        this.f51071g = c8808om0;
        this.f51069e = c4798y;
        this.f51070f = h52.d().Q0().a(c4798y);
    }

    public final Optional a(com.android.tools.r8.graph.H5 h52, Optional optional) {
        if (optional == null) {
            return Optional.of((com.android.tools.r8.graph.H5) this.f37177b);
        }
        return optional.orElse(null) == this.f37177b ? optional : Optional.empty();
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f51069e.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f51070f;
        v10.getClass();
        com.android.tools.r8.graph.H5 r10 = ((C4514j) this.f51069e.f()).f((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49582f, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a).r();
        if (r10 != null) {
            a(r10);
            com.android.tools.r8.graph.H2 holder = r10.getHolder();
            if (((C4514j) this.f51069e.f()).b(((com.android.tools.r8.graph.H5) this.f37177b).getHolder(), holder)) {
                return;
            }
            a(holder);
        }
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 s02 = this.f51069e.v().e(this.f51070f, c4554l1).s0();
        C4798y c4798y = this.f51069e;
        s02.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(s02));
        if (a10 == null || ((C4514j) this.f51069e.f()).b(((com.android.tools.r8.graph.H5) this.f37177b).getHolder(), a10)) {
            return;
        }
        a(a10);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = this.f51069e.v().c(this.f51070f, m22);
        C4798y c4798y = this.f51069e;
        c10.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(c10));
        if (a10 == null || ((C4514j) this.f51069e.f()).b(((com.android.tools.r8.graph.H5) this.f37177b).getHolder(), a10)) {
            return;
        }
        a(a10);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 s02 = this.f51069e.v().e(this.f51070f, c4554l1).s0();
        C4798y c4798y = this.f51069e;
        s02.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(s02));
        if (a10 == null || ((C4514j) this.f51069e.f()).b(((com.android.tools.r8.graph.H5) this.f37177b).getHolder(), a10)) {
            return;
        }
        a(a10);
    }

    public final Optional a(com.android.tools.r8.graph.H2 h22, Optional optional) {
        if (optional == null) {
            return Optional.of((com.android.tools.r8.graph.H5) this.f37177b);
        }
        if (!f51068h && optional.orElse(null) == this.f37177b) {
            throw new AssertionError();
        }
        return Optional.empty();
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        this.f51071g.f51352b.a((com.android.tools.r8.graph.G0) h52, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8641nm0.this.a((com.android.tools.r8.graph.H5) obj, (Optional) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        Optional optional = (Optional) this.f51071g.f51353c.get(h22);
        if (optional == null || (optional.isPresent() && optional.get() != this.f37177b)) {
            this.f51071g.f51353c.compute(h22, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C8641nm0.this.a((com.android.tools.r8.graph.H2) obj, (Optional) obj2);
                }
            });
            if (h22.i1()) {
                com.android.tools.r8.graph.M2 a12 = h22.a1();
                C4798y c4798y = this.f51069e;
                a12.getClass();
                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(a12));
                if (a10 != null) {
                    a(a10);
                }
            }
        }
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = this.f51069e.v().c(this.f51070f, m22);
        C4798y c4798y = this.f51069e;
        c10.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(c10));
        if (a10 == null || ((C4514j) this.f51069e.f()).b(((com.android.tools.r8.graph.H5) this.f37177b).getHolder(), a10)) {
            return;
        }
        a(a10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f51069e.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f51070f;
        v10.getClass();
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49580d, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a;
        com.android.tools.r8.graph.M2 s02 = a23.s0();
        C4798y c4798y = this.f51069e;
        s02.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(s02));
        com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(a23) : null;
        if (e10 != null) {
            a(e10);
        }
    }
}
