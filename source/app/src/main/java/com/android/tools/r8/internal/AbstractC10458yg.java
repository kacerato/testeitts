package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Supplier;

public abstract class AbstractC10458yg extends Q00 {

    public static final boolean f54101d = true;

    public Set f54102b;

    public boolean f54103c;

    public AbstractC10458yg(Set set) {
        this.f54102b = set;
    }

    public static Q00 a(com.android.tools.r8.graph.M2 m22, F1 f12) {
        if (m22.E0()) {
            return C10671zv0.f54579b;
        }
        if (m22.I0()) {
            return C8288lg.a(f12, AbstractC10330xt.m(), Collections.EMPTY_SET);
        }
        if (f54101d || m22.P0()) {
            return C9790ug.a(f12);
        }
        throw new AssertionError();
    }

    public abstract AbstractC10458yg a(Supplier supplier);

    @Override
    public final Q00 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i()) {
            return this;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return C10671zv0.f54579b;
        }
        boolean z10 = true;
        if (abstractC5361Iw0.n()) {
            AbstractC7836iw0 h10 = abstractC5361Iw0.h();
            if (!f54101d && h10 == null) {
                throw new AssertionError();
            }
            this.f54103c = true;
            return this;
        }
        AbstractC10458yg c10 = abstractC5361Iw0.c();
        if (l()) {
            if (f54101d || c10.l()) {
                return g().a(c4798y, c10.g(), m22, m23, interfaceC6522b2);
            }
            throw new AssertionError();
        }
        C9790ug e10 = e();
        C9790ug e11 = c10.e();
        e10.getClass();
        if (!C9790ug.f52913f && !m23.P0()) {
            throw new AssertionError();
        }
        F1 f12 = e11.f52914e;
        F1 f13 = e10.f52914e;
        J1 j12 = c4798y.f38430w;
        AbstractC8999pu0 b10 = m23.b(j12.f41551a);
        F1 a10 = j12.a(f13, f12, b10);
        if (!J1.f41268c && !a10.equals(j12.a(f12, f13, b10))) {
            throw new AssertionError();
        }
        e10.f52914e = a10;
        boolean equals = a10.equals(f13);
        if (e10.f52914e.isUnknown()) {
            return C10671zv0.f54579b;
        }
        boolean a11 = e10.a((AbstractC10458yg) e11);
        if (e10.b(c4798y)) {
            return C10671zv0.f54579b;
        }
        if (e10.f54103c || !e11.f54103c) {
            z10 = false;
        } else {
            e10.f54103c = true;
        }
        if (equals && !a11 && !z10) {
            return e10;
        }
        interfaceC6522b2.a();
        return e10;
    }

    @Override
    public final AbstractC10458yg c() {
        return this;
    }

    @Override
    public final boolean j() {
        return true;
    }

    public final Set p() {
        if (!this.f54102b.isEmpty()) {
            return new HashSet(this.f54102b);
        }
        if (f54101d || this.f54102b == Collections.EMPTY_SET) {
            return this.f54102b;
        }
        throw new AssertionError();
    }

    public abstract B7 q();

    public abstract AbstractC7836iw0 r();

    public final Set s() {
        if (f54101d || this.f54102b.isEmpty() || (this.f54102b instanceof HashSet)) {
            return this.f54102b;
        }
        throw new AssertionError();
    }

    public final boolean t() {
        return !this.f54102b.isEmpty();
    }

    public final boolean u() {
        return (t() || !v() || this.f54103c) ? false : true;
    }

    public abstract boolean v();

    public abstract boolean w();

    @Override
    public final AbstractC10458yg o() {
        return a(new Supplier() {
            @Override
            public final Object get() {
                return AbstractC10458yg.this.p();
            }
        });
    }

    public final AbstractC5361Iw0 y() {
        if (v()) {
            return q();
        }
        AbstractC10458yg a10 = a(new Supplier() {
            @Override
            public final Object get() {
                return Collections.emptySet();
            }
        });
        if (f54101d || !a10.u()) {
            return a10;
        }
        throw new AssertionError();
    }

    public final boolean a(AbstractC10458yg abstractC10458yg) {
        Set s10 = abstractC10458yg.s();
        if (s10.isEmpty()) {
            return false;
        }
        if (this.f54102b.isEmpty()) {
            if (!f54101d && this.f54102b != Collections.EMPTY_SET) {
                throw new AssertionError();
            }
            this.f54102b = new HashSet();
        }
        return this.f54102b.addAll(s10);
    }

    public final boolean b(C4798y c4798y) {
        Set set = this.f54102b;
        if (set == null) {
            return false;
        }
        int size = set.size();
        c4798y.E().c().getClass();
        return size > 10;
    }
}
