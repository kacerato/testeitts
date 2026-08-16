package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4465g6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class UR extends AbstractC4465g6 {

    public final VR f44756f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UR(VR vr, C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52, Boolean.FALSE);
        this.f44756f = vr;
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        if (g(c4554l1.s0())) {
            return;
        }
        g(c4554l1.getType());
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        g(m22);
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        if (g(c4554l1.s0())) {
            return;
        }
        g(c4554l1.getType());
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        if (g(c4554l1.s0())) {
            return;
        }
        g(c4554l1.getType());
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        if (g(c4554l1.s0())) {
            return;
        }
        g(c4554l1.getType());
    }

    public final void h(com.android.tools.r8.graph.A2 a22) {
        if (g(a22.z0())) {
            return;
        }
        AbstractC9907vK.b(a22.x0(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return UR.this.g((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        g(m22);
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        g(m22);
    }

    @Override
    public final void e(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void f(com.android.tools.r8.graph.M2 m22) {
        g(m22);
    }

    public final boolean g(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.L2 l22 = m22.f36592f;
        com.android.tools.r8.graph.L2 l23 = this.f44756f.f45053a;
        l22.getClass();
        if (!l22.b(l23.f36562f)) {
            return false;
        }
        this.f37241e = Boolean.TRUE;
        a();
        return true;
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }
}
