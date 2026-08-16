package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.Set;

public class C10664zt extends AbstractC10330xt {

    public static final C10664zt f54560c = new C10664zt(AbstractC8999pu0.f());

    public static final C10664zt f54561d = new C10664zt(AbstractC8999pu0.m());

    public static final C10664zt f54562e = new C10664zt(AbstractC8999pu0.p());

    public static final boolean f54563f = true;

    public final AbstractC8999pu0 f54564b;

    public C10664zt(AbstractC8999pu0 abstractC8999pu0) {
        if (!f54563f && abstractC8999pu0 == null) {
            throw new AssertionError();
        }
        this.f54564b = abstractC8999pu0;
    }

    @Override
    public final C10664zt a() {
        return this;
    }

    @Override
    public C6949de b() {
        return null;
    }

    @Override
    public C6949de c() {
        if (e() && b().a(n())) {
            return b();
        }
        return null;
    }

    @Override
    public final C8854p10 d() {
        return this.f54564b.B();
    }

    @Override
    public boolean e() {
        return this instanceof C10497yt;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f54564b.equals(((C10664zt) obj).f54564b);
    }

    @Override
    public final boolean f() {
        return true;
    }

    @Override
    public final boolean g() {
        AbstractC8999pu0 abstractC8999pu0 = this.f54564b;
        abstractC8999pu0.getClass();
        return abstractC8999pu0 instanceof C10540z7;
    }

    @Override
    public final boolean h() {
        return true;
    }

    public int hashCode() {
        return this.f54564b.hashCode();
    }

    @Override
    public boolean i() {
        return c() != null;
    }

    @Override
    public final boolean k() {
        AbstractC8999pu0 abstractC8999pu0 = this.f54564b;
        abstractC8999pu0.getClass();
        return abstractC8999pu0 instanceof C6301Zd0;
    }

    @Override
    public final boolean l() {
        AbstractC8999pu0 abstractC8999pu0 = this.f54564b;
        abstractC8999pu0.getClass();
        return abstractC8999pu0 instanceof C10328xs0;
    }

    public AbstractC8999pu0 n() {
        return this.f54564b;
    }

    public String toString() {
        if (g()) {
            return "BottomDynamicType";
        }
        if (j()) {
            return "NotNullDynamicType";
        }
        if (k()) {
            return "NullDynamicType";
        }
        if (l()) {
            return "UnknownDynamicType";
        }
        return "DynamicTypeWithUpperBound(" + ((Object) n()) + ")";
    }

    public final boolean b(C4798y c4798y, C10664zt c10664zt) {
        if (equals(c10664zt)) {
            return false;
        }
        if (n().equals(c10664zt.n())) {
            if (c10664zt.e()) {
                return e() && c10664zt.b().c(b(), c4798y);
            }
            return e();
        }
        if (!n().c(c10664zt.n(), c4798y)) {
            return false;
        }
        if (c10664zt.e()) {
            return e() && c10664zt.b().b(n(), c4798y);
        }
        return true;
    }

    public static C10664zt a(C4798y<? extends C4514j> c4798y, AbstractC8999pu0 abstractC8999pu0, C6949de c6949de) {
        abstractC8999pu0.getClass();
        if (abstractC8999pu0 instanceof C10540z7) {
            return f54560c;
        }
        if (abstractC8999pu0 instanceof C6301Zd0) {
            return f54561d;
        }
        if (abstractC8999pu0 instanceof C10328xs0) {
            return AbstractC10330xt.m();
        }
        if (c6949de != null) {
            boolean z10 = f54563f;
            if (!z10 && !abstractC8999pu0.s()) {
                throw new AssertionError();
            }
            if (!z10 && abstractC8999pu0.B() != c6949de.f46573b) {
                throw new AssertionError();
            }
            if (abstractC8999pu0.equals(c6949de)) {
                return new C8166kv(c6949de);
            }
            return C10497yt.a((C4798y) c4798y, abstractC8999pu0.b(), c6949de);
        }
        boolean z11 = f54563f;
        if (!z11 && abstractC8999pu0.s()) {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(abstractC8999pu0.b().E());
            if (!z11 && g10 != null && g10.c(c4798y)) {
                throw new AssertionError();
            }
        }
        return new C10664zt(abstractC8999pu0);
    }

    @Override
    public C10664zt a(C8854p10 c8854p10) {
        if (!f54563f && e()) {
            throw new AssertionError();
        }
        if (n().y()) {
            AbstractC6450ae0 d10 = n().d();
            if (d10.f46573b != c8854p10) {
                return new C10664zt(d10.a(c8854p10));
            }
        }
        return this;
    }

    public static C10664zt a(C4798y<? extends C4514j> c4798y, AbstractC8999pu0 abstractC8999pu0) {
        com.android.tools.r8.graph.E0 g10;
        return a(c4798y, abstractC8999pu0, (abstractC8999pu0.s() && (g10 = c4798y.g(abstractC8999pu0.b().E())) != null && g10.c(c4798y)) ? abstractC8999pu0.b() : null);
    }

    @Override
    public final AbstractC8999pu0 a(AbstractC8999pu0 abstractC8999pu0) {
        return n();
    }

    public final C10664zt a(C4798y c4798y, C10664zt c10664zt) {
        C6949de b10;
        com.android.tools.r8.graph.E0 g10;
        AbstractC8999pu0 a10 = n().a(c4798y, c10664zt.n());
        if (a10.s() && (g10 = c4798y.g(a10.b().E())) != null && g10.c(c4798y)) {
            b10 = a10.b();
        } else if (k()) {
            if (c10664zt.e()) {
                b10 = c10664zt.b().b(C8854p10.c());
            }
            b10 = null;
        } else if (c10664zt.k()) {
            if (e()) {
                b10 = b().b(C8854p10.c());
            }
            b10 = null;
        } else {
            if (e() && c10664zt.e()) {
                C6949de b11 = b();
                C6949de b12 = c10664zt.b();
                if (b11.b(b12, c4798y)) {
                    b10 = b11.b(b12.f46573b);
                } else if (b12.b(b11, c4798y)) {
                    b10 = b12.b(b11.f46573b);
                }
            }
            b10 = null;
        }
        return (a10.equals(n()) && Objects.equals(b10, b())) ? this : a((C4798y<? extends C4514j>) c4798y, a10, b10);
    }

    @Override
    public AbstractC10330xt a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, Set set) {
        if (g() || k() || l()) {
            return this;
        }
        C6949de c6949de = null;
        AbstractC8999pu0 a10 = this.f54564b.a(c4798y, abstractC5308Hz, null, set);
        if (e()) {
            AbstractC8999pu0 a11 = b().a(c4798y, abstractC5308Hz, (AbstractC5308Hz) null, set);
            if (a11.s()) {
                c6949de = a11.b();
            }
        }
        if (c6949de != null) {
            return a((C4798y<? extends C4514j>) c4798y, a10, c6949de);
        }
        return a((C4798y<? extends C4514j>) c4798y, a10);
    }
}
