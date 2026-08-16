package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.naming.AbstractC10992r0;

public abstract class ZY {
    public abstract com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, InterfaceC4403d1 interfaceC4403d1, AbstractC10992r0 abstractC10992r0);

    public abstract ZY a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2);

    public AbstractC9112qc0 a() {
        return null;
    }

    public abstract int b();

    public abstract void b(AbstractC9213rA abstractC9213rA);

    public boolean c() {
        return false;
    }

    public abstract boolean d();

    public abstract boolean e();

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.J2 j22, C4798y c4798y) {
        AbstractC10992r0 s10 = c4798y.s();
        if (d()) {
            if (!(this instanceof C8169kw)) {
                if (this instanceof C10115wd) {
                    C10115wd c10115wd = (C10115wd) this;
                    com.android.tools.r8.graph.M2 o02 = j22.o0();
                    return c10115wd.f53542c.a(s10.c(o02).toString(), c4798y.g(o02), c4798y.b(), c10115wd.f53541b);
                }
                if (c()) {
                    return a().a(j22.o0(), c4798y, s10);
                }
            } else {
                j22.l0();
                throw new C5417Jv0();
            }
        }
        C4724u1 b10 = c4798y.b();
        s10.getClass();
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            return b10.b(C4932Bl.b(s10.c(j22.o0()).toString()));
        }
        if (j22.r0()) {
            return s10.a(j22.n0());
        }
        if (AbstractC10992r0.f56045a || j22.p0()) {
            return s10.a(j22.l0());
        }
        throw new AssertionError();
    }

    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(AbstractC4291c.b(b()));
        b(abstractC9213rA);
    }
}
