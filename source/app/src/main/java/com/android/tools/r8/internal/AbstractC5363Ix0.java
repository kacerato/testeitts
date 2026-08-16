package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public abstract class AbstractC5363Ix0 {

    public static final boolean f41256a = true;

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
    
        if ((r7 != null ? !r7.e0() ? r7.p1() : !((com.android.tools.r8.shaking.C11245i) r5.f()).f57405t.a(r7.d0()) : false) != false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AbstractC10330xt a(C4798y c4798y, AbstractC10330xt abstractC10330xt, com.android.tools.r8.graph.M2 m22, C8854p10 c8854p10) {
        if (!f41256a && !m22.I0()) {
            throw new AssertionError();
        }
        if (!abstractC10330xt.g() && !abstractC10330xt.k() && !abstractC10330xt.j() && !abstractC10330xt.l()) {
            AbstractC8999pu0 n10 = abstractC10330xt.a().n();
            C6949de a10 = m22.b((C4798y<?>) c4798y).b().a(c8854p10);
            C8854p10 d10 = abstractC10330xt.d();
            if (d10.equals(c8854p10) || c8854p10 != d10.a(c8854p10)) {
                if (n10.equals(a10)) {
                    if (!abstractC10330xt.e()) {
                        return AbstractC10330xt.m();
                    }
                    com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
                    if (g10 != null ? !g10.e0() ? g10.p1() : !((C11245i) c4798y.f()).f57405t.a(g10.d0()) : false) {
                        return AbstractC10330xt.m();
                    }
                }
            } else if (abstractC10330xt.d().d() && n10.a(a10)) {
                if (abstractC10330xt.e()) {
                    com.android.tools.r8.graph.E0 g11 = c4798y.g(m22);
                }
                boolean z10 = AbstractC10330xt.f53865a;
                return C7520h10.f48413b;
            }
        }
        return abstractC10330xt;
    }
}
