package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4465g6;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;

public class QB extends AbstractC4465g6 {

    public static final boolean f43498h = true;

    public final C4798y f43499f;

    public final AbstractC5308Hz f43500g;

    public QB(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52, Boolean.FALSE);
        this.f43499f = c4798y;
        this.f43500g = h52.d().Q0().a(c4798y);
    }

    public boolean a(com.android.tools.r8.graph.F0 f02) {
        return false;
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        AbstractC9723uD abstractC9723uD = this.f43499f.f38417j;
        abstractC9723uD.getClass();
        if (abstractC9723uD instanceof C7005dx) {
            i(this.f43499f.f38417j.a(this.f43499f.v().c(this.f43500g, m22)));
        } else {
            a(this.f43499f.v(), this.f43500g, m22);
        }
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        i(this.f43499f.v().e(this.f43500g, c4554l1));
    }

    public final void d() {
        this.f37241e = Boolean.TRUE;
        a();
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        i(this.f43499f.v().e(this.f43500g, c4554l1));
    }

    @Override
    public final void f(com.android.tools.r8.graph.M2 m22) {
        a(this.f43499f.v(), this.f43500g, m22);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        i(this.f43499f.v().e(this.f43500g, c4554l1));
    }

    public final boolean i(C4554l1 c4554l1) {
        boolean z10 = f43498h;
        if (!z10 && !c4554l1.s0().I0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 s02 = c4554l1.s0();
        if (!s02.z0().equals(((com.android.tools.r8.graph.H5) this.f37177b).p().z0())) {
            return false;
        }
        if (a(AbstractC5308Hz.g(), AbstractC5308Hz.g(), s02)) {
            if (z10 || this.f37241e.booleanValue()) {
                return true;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.F0 p10 = ((C4514j) this.f43499f.f()).c(c4554l1).p();
        if (p10 == null) {
            d();
            return true;
        }
        if (p10.getHolder() != ((com.android.tools.r8.graph.H5) this.f37177b).getHolder() && !p10.getAccessFlags().l()) {
            d();
            return true;
        }
        if (!a(p10)) {
            return false;
        }
        if (z10 || this.f37241e.booleanValue()) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i(this.f43499f.v().e(this.f43500g, c4554l1));
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f43499f.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43500g;
        v10.getClass();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        EnumC8071kK enumC8071kK = EnumC8071kK.f49583g;
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        a((com.android.tools.r8.graph.A2) v10.a(a22, reference, enumC8071kK, abstractC5308Hz, abstractC9530t40).f41111a, abstractC9530t40);
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        a(this.f43499f.v(), this.f43500g, m22);
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        a(this.f43499f.v(), this.f43500g, m22);
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f43499f.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43500g;
        v10.getClass();
        a((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49584h, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a, AbstractC9530t40.f52518b);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, AbstractC9530t40 abstractC9530t40) {
        com.android.tools.r8.graph.Z4 a10;
        com.android.tools.r8.graph.M2 a11 = a22.s0().a(this.f43499f.b());
        if (a11.I0()) {
            if (a11.z0().equals(((com.android.tools.r8.graph.H5) this.f37177b).p().z0())) {
                if (a(AbstractC5308Hz.g(), AbstractC5308Hz.g(), a22.s0())) {
                    if (!f43498h && !this.f37241e.booleanValue()) {
                        throw new AssertionError();
                    }
                    return;
                }
                if (abstractC9530t40.e()) {
                    a10 = ((C4514j) this.f43499f.f()).e(a22);
                } else {
                    a10 = ((C4514j) this.f43499f.f()).a(a22, abstractC9530t40.d());
                }
                if (!a10.w()) {
                    d();
                    return;
                }
                Z4.c<?> o10 = a10.o();
                com.android.tools.r8.graph.H0 a12 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
                if (a12.getHolder() == ((com.android.tools.r8.graph.H5) this.f37177b).getHolder() || a12.getAccessFlags().l()) {
                    return;
                }
                d();
            }
        }
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f43499f.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43500g;
        v10.getClass();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        EnumC8071kK enumC8071kK = EnumC8071kK.f49582f;
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        a((com.android.tools.r8.graph.A2) v10.a(a22, reference, enumC8071kK, abstractC5308Hz, abstractC9530t40).f41111a, abstractC9530t40);
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f43499f.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43500g;
        v10.getClass();
        a((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49581e, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a, AbstractC9530t40.f52517a);
    }

    public final boolean a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, m22.a(this.f43499f.b()));
        if (!c10.I0()) {
            return false;
        }
        if (!c10.z0().equals(((com.android.tools.r8.graph.H5) this.f37177b).p().z0())) {
            return false;
        }
        com.android.tools.r8.graph.E0 g10 = this.f43499f.g(c10);
        if (g10 != null && g10.w1()) {
            return false;
        }
        d();
        return true;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f43499f.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43500g;
        v10.getClass();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        EnumC8071kK enumC8071kK = EnumC8071kK.f49580d;
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        a((com.android.tools.r8.graph.A2) v10.a(a22, reference, enumC8071kK, abstractC5308Hz, abstractC9530t40).f41111a, abstractC9530t40);
    }
}
