package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public abstract class AbstractC10330xt {

    public static final boolean f53865a = true;

    public static C10664zt m() {
        return C10664zt.f54562e;
    }

    public abstract AbstractC8999pu0 a(AbstractC8999pu0 abstractC8999pu0);

    public AbstractC10330xt a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        return this;
    }

    public abstract AbstractC10330xt a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, Set set);

    public abstract AbstractC10330xt a(C8854p10 c8854p10);

    public C6949de b() {
        return null;
    }

    public abstract C6949de c();

    public abstract C8854p10 d();

    public boolean e() {
        return false;
    }

    public abstract boolean equals(Object obj);

    public boolean f() {
        return false;
    }

    public boolean g() {
        return false;
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return c() != null;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return false;
    }

    public boolean l() {
        return false;
    }

    public C10664zt a() {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r1.c(r2) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C10664zt a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0) {
        C6949de c6949de;
        if (abstractC8999pu0.s()) {
            c6949de = abstractC8999pu0.b();
            com.android.tools.r8.graph.E0 g10 = c4798y.g(c6949de.E());
            if (g10 != null) {
            }
        }
        c6949de = null;
        return a(c4798y, abstractC8999pu0, c6949de);
    }

    public static C10664zt a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0, C6949de c6949de) {
        abstractC8999pu0.getClass();
        if (abstractC8999pu0 instanceof C10540z7) {
            return C10664zt.f54560c;
        }
        if (abstractC8999pu0 instanceof C6301Zd0) {
            return C10664zt.f54561d;
        }
        if (abstractC8999pu0 instanceof C10328xs0) {
            return m();
        }
        if (c6949de != null) {
            boolean z10 = f53865a;
            if (!z10 && !abstractC8999pu0.s()) {
                throw new AssertionError();
            }
            if (!z10 && abstractC8999pu0.B() != c6949de.f46573b) {
                throw new AssertionError();
            }
            if (abstractC8999pu0.equals(c6949de)) {
                return new C8166kv(c6949de);
            }
            return C10497yt.a(c4798y, abstractC8999pu0.b(), c6949de);
        }
        boolean z11 = f53865a;
        if (!z11 && abstractC8999pu0.s()) {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(abstractC8999pu0.b().E());
            if (!z11 && g10 != null && g10.c(c4798y)) {
                throw new AssertionError();
            }
        }
        return new C10664zt(abstractC8999pu0);
    }

    public final AbstractC10330xt a(C4798y c4798y, AbstractC10330xt abstractC10330xt, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (!equals(abstractC10330xt)) {
            if (g()) {
                return m22 != null ? abstractC10330xt.a(c4798y, m22) : abstractC10330xt;
            }
            if (!abstractC10330xt.g()) {
                if (!l() && !abstractC10330xt.l()) {
                    if (j()) {
                        if (abstractC10330xt.d().g()) {
                            return m();
                        }
                    } else {
                        if (abstractC10330xt.j()) {
                            if (m22 == null || m22.a(m23)) {
                                return d().g() ? m() : abstractC10330xt;
                            }
                            abstractC10330xt = abstractC10330xt.a(c4798y, m22);
                        }
                        boolean z10 = f53865a;
                        if (!z10 && !h()) {
                            throw new AssertionError();
                        }
                        if (z10 || abstractC10330xt.h()) {
                            return a().a(c4798y, abstractC10330xt.a());
                        }
                        throw new AssertionError();
                    }
                } else {
                    return m();
                }
            }
        }
        return this;
    }
}
