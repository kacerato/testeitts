package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class S00 extends AbstractC4591n0 {

    public final T00 f44056f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public S00(T00 t00, C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52, r0);
        Boolean bool = Boolean.TRUE;
        this.f44056f = t00;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        a(((C4514j) this.f44056f.f44358a.f()).e(a22));
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        a(((C4514j) this.f44056f.f44358a.f()).a(a22, true));
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        a(((C4514j) this.f44056f.f44358a.f()).e(a22));
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        this.f37241e = Boolean.FALSE;
        a();
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        a(((C4514j) this.f44056f.f44358a.f()).a(a22, false));
    }

    public final void i(C4554l1 c4554l1) {
        C4514j c4514j = (C4514j) this.f44056f.f44358a.f();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        c4514j.getClass();
        com.android.tools.r8.graph.F0 p10 = c4514j.a(c4554l1.f38297f, c4554l1, h52).p();
        if (p10 == null) {
            return;
        }
        if (p10.getAccessFlags().h()) {
            this.f37241e = Boolean.FALSE;
            a();
        } else {
            if (!p10.getAccessFlags().k() || p10.a(this.f37177b.getReference())) {
                return;
            }
            this.f37241e = Boolean.FALSE;
            a();
        }
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        i(c4554l1);
    }

    public final void a(com.android.tools.r8.graph.Z4 z42) {
        com.android.tools.r8.graph.H0 p10 = z42.p();
        if (p10 == null) {
            return;
        }
        if (p10.getAccessFlags().h()) {
            this.f37241e = Boolean.FALSE;
            a();
        } else {
            if (!p10.getAccessFlags().k() || p10.a(this.f37177b.getReference())) {
                return;
            }
            this.f37241e = Boolean.FALSE;
            a();
        }
    }
}
