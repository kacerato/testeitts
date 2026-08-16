package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC8999pu0 {

    public static final boolean f51660a = true;

    public static C8537n7 e() {
        return C8537n7.f50510d;
    }

    public static C10540z7 f() {
        return C10540z7.f54287b;
    }

    public static C8540n8 g() {
        return C8540n8.f50514d;
    }

    public static C6610bc h() {
        return C6610bc.f46800d;
    }

    public static C8160kt i() {
        return C8160kt.f49797d;
    }

    public static C5188Fx j() {
        return C5188Fx.f40351d;
    }

    public static C9736uI k() {
        return C9736uI.f52831d;
    }

    public static C9593tU l() {
        return C9593tU.f52614d;
    }

    public static AbstractC6450ae0 m() {
        return AbstractC6450ae0.f46571c;
    }

    public static C5860Rl0 n() {
        return C5860Rl0.f43986d;
    }

    public static C5457Km0 o() {
        return C5457Km0.f41760c;
    }

    public static C10328xs0 p() {
        return C10328xs0.f53863b;
    }

    public static C5305Hx0 q() {
        return C5305Hx0.f40934c;
    }

    public boolean A() {
        return false;
    }

    public abstract C8854p10 B();

    public int C() {
        if (f51660a) {
            return 1;
        }
        if ((this instanceof C10540z7) || (this instanceof C10328xs0)) {
            throw new AssertionError();
        }
        return 1;
    }

    public W3 a() {
        return null;
    }

    public C6949de b() {
        return null;
    }

    public D70 c() {
        return null;
    }

    public AbstractC6450ae0 d() {
        return null;
    }

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public boolean r() {
        return false;
    }

    public boolean s() {
        return false;
    }

    public boolean t() {
        return B().d();
    }

    public abstract String toString();

    public final boolean u() {
        return (this instanceof C8537n7) || (this instanceof C8540n8) || (this instanceof C5860Rl0) || (this instanceof C6610bc);
    }

    public boolean v() {
        return B().g();
    }

    public final boolean w() {
        return r() || s() || (this instanceof C6301Zd0) || (this instanceof C9736uI) || (this instanceof C5188Fx) || (this instanceof C9593tU) || (this instanceof C8160kt) || (this instanceof C10540z7);
    }

    public boolean x() {
        return false;
    }

    public boolean y() {
        return false;
    }

    public boolean z() {
        return false;
    }

    public AbstractC8999pu0 a(C4798y c4798y, Function function, Set set) {
        return this;
    }

    public boolean b(AbstractC8999pu0 abstractC8999pu0, C4798y<?> c4798y) {
        AbstractC6450ae0 a10;
        if (this == abstractC8999pu0) {
            return true;
        }
        if (this instanceof C10328xs0) {
            abstractC8999pu0.getClass();
            return abstractC8999pu0 instanceof C10328xs0;
        }
        abstractC8999pu0.getClass();
        if ((abstractC8999pu0 instanceof C10328xs0) || (this instanceof C10540z7)) {
            return true;
        }
        if (abstractC8999pu0 instanceof C10540z7) {
            return false;
        }
        if (x()) {
            return a(abstractC8999pu0, c4798y);
        }
        if (!f51660a && (!y() || !abstractC8999pu0.y())) {
            throw new AssertionError();
        }
        if (abstractC8999pu0.v()) {
            a10 = abstractC8999pu0.d();
        } else {
            a10 = abstractC8999pu0.d().a(C8854p10.h());
        }
        return a(a10, c4798y);
    }

    public boolean c(AbstractC8999pu0 abstractC8999pu0, C4798y<?> c4798y) {
        if (equals(abstractC8999pu0)) {
            return false;
        }
        AbstractC8999pu0 a10 = a(c4798y, abstractC8999pu0);
        return !equals(a10) && abstractC8999pu0.equals(a10);
    }

    public boolean a(C4798y c4798y) {
        return false;
    }

    public boolean a(Predicate predicate) {
        return false;
    }

    public final boolean a(AbstractC8999pu0 abstractC8999pu0) {
        if (this == abstractC8999pu0) {
            return true;
        }
        boolean z10 = this instanceof C10540z7;
        abstractC8999pu0.getClass();
        if (z10 != (abstractC8999pu0 instanceof C10540z7) || x() || abstractC8999pu0.x()) {
            return false;
        }
        if (f51660a || (y() && abstractC8999pu0.y())) {
            return d().a(C8854p10.h()).equals(abstractC8999pu0.d().a(C8854p10.h()));
        }
        throw new AssertionError();
    }

    public final AbstractC8999pu0 a(C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2, Set set) {
        return a(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 c10;
                c10 = AbstractC5308Hz.this.c(abstractC5308Hz2, (com.android.tools.r8.graph.M2) obj);
                return c10;
            }
        }, set);
    }

    public final AbstractC8999pu0 a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0) {
        if (this == abstractC8999pu0) {
            return this;
        }
        abstractC8999pu0.getClass();
        if (abstractC8999pu0 instanceof C10540z7) {
            return this;
        }
        if (this instanceof C10540z7) {
            return abstractC8999pu0;
        }
        if (!(this instanceof C10328xs0) && !(abstractC8999pu0 instanceof C10328xs0) && x() == abstractC8999pu0.x()) {
            if (x()) {
                D70 c10 = c();
                D70 c11 = abstractC8999pu0.c();
                if (c10 == c11) {
                    c10.getClass();
                    return c10;
                }
                if (c10.z()) {
                    if (c11.z()) {
                        return o();
                    }
                    if (D70.f39450b || c11.A()) {
                        return p();
                    }
                    throw new AssertionError();
                }
                boolean z10 = D70.f39450b;
                if (!z10 && !c10.A()) {
                    throw new AssertionError();
                }
                if (c11.A()) {
                    return q();
                }
                if (z10 || c11.z()) {
                    return p();
                }
                throw new AssertionError();
            }
            boolean z11 = f51660a;
            if (!z11 && !y()) {
                throw new AssertionError();
            }
            if (!z11 && !w()) {
                throw new AssertionError();
            }
            if (!z11 && !abstractC8999pu0.y()) {
                throw new AssertionError();
            }
            if (z11 || abstractC8999pu0.w()) {
                return d().a(abstractC8999pu0.d(), c4798y);
            }
            throw new AssertionError();
        }
        return p();
    }

    public static AbstractC8999pu0 a(Iterable<AbstractC8999pu0> iterable, C4798y<?> c4798y) {
        AbstractC8999pu0 f10 = f();
        Iterator<AbstractC8999pu0> it = iterable.iterator();
        while (it.hasNext()) {
            f10 = f10.a(c4798y, it.next());
        }
        return f10;
    }

    public boolean a(AbstractC8999pu0 abstractC8999pu0, C4798y<?> c4798y) {
        if (equals(abstractC8999pu0)) {
            return true;
        }
        AbstractC8999pu0 a10 = a(c4798y, abstractC8999pu0);
        return !equals(a10) && abstractC8999pu0.equals(a10);
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        if (f51660a || m22.I0()) {
            return s() && b().E() == m22;
        }
        throw new AssertionError();
    }

    public static C6949de a(C4798y<?> c4798y, C8854p10 c8854p10) {
        return a(c4798y.b().f38052g2, c8854p10, c4798y).b();
    }

    public static AbstractC8999pu0 a(com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10, C4798y<?> c4798y) {
        if (m22 == C4724u1.f37808E6) {
            if (f51660a || !c8854p10.d()) {
                return m();
            }
            throw new AssertionError();
        }
        if (m22.P0()) {
            if (D70.f39450b || m22.P0()) {
                return D70.a((char) m22.f36592f.f36562f[0], false);
            }
            throw new AssertionError();
        }
        return c4798y.b().a(m22, c8854p10, c4798y);
    }
}
