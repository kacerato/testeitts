package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.AbstractC9109qb0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8775ob0;

public final class O0 extends AbstractC10988q0 {

    public static final boolean f55719e = true;

    public final AbstractC10992r0 f55720d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O0(C4798y c4798y) {
        super(r0);
        C4724u1 b10 = c4798y.b();
        AbstractC10992r0 s10 = c4798y.s();
        this.f55720d = s10;
    }

    public static void a(C4798y c4798y) {
        C4477h f10 = c4798y.f();
        C8570nJ E10 = c4798y.E();
        if (!AbstractC8737oJ.a(E10.k()) || f10.c(c4798y.b().f38076j2) == null) {
            return;
        }
        AbstractC9109qb0 abstractC9109qb0 = E10.f50596E1;
        if (abstractC9109qb0 == null || !(abstractC9109qb0 instanceof C8775ob0)) {
            c4798y.f38419l = new O0(c4798y);
        }
    }

    @Override
    public final boolean b() {
        return this.f55720d.b();
    }

    @Override
    public final AbstractC10992r0 c() {
        AbstractC10992r0 c10 = this.f55720d.c();
        return c10 != this.f55720d ? new O0(this.f56029b, c10) : this;
    }

    @Override
    public final com.android.tools.r8.graph.L2 e(com.android.tools.r8.graph.M2 m22) {
        return this.f55720d.e(m22);
    }

    public O0(C4724u1 c4724u1, AbstractC10992r0 abstractC10992r0) {
        super(c4724u1);
        this.f55720d = abstractC10992r0;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4425e4 c4425e4, C8570nJ c8570nJ) {
        if (!f55719e) {
            com.android.tools.r8.graph.M2 b10 = c4425e4.b();
            C4724u1 c4724u1 = this.f56029b;
            if ((b10 == c4724u1.f38076j2 ? c4724u1.f38084k2.f36592f : null) != null) {
                throw new AssertionError();
            }
        }
        return this.f55720d.a(c4425e4, c8570nJ);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.A2 a22) {
        return this.f55720d.a(a22);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4554l1 c4554l1) {
        return this.f55720d.a(c4554l1);
    }

    @Override
    public final String a(String str) {
        return this.f55720d.a(str);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        C4724u1 c4724u1 = this.f56029b;
        com.android.tools.r8.graph.L2 l22 = m22 == c4724u1.f38076j2 ? c4724u1.f38084k2.f36592f : null;
        return l22 != null ? l22 : this.f55720d.c(m22);
    }
}
