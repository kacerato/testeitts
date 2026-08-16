package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class PZ extends AbstractC4572m0 {

    public final AbstractC5308Hz f43266e;

    public final QZ f43267f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PZ(QZ qz, com.android.tools.r8.graph.H5 h52) {
        super(r1, h52);
        this.f43267f = qz;
        C4798y c4798y = qz.f43630h.f43929b;
        this.f43266e = h52.d().Q0().a(c4798y);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        if (((C11245i) this.f43267f.f43630h.f43929b.f()).b(((com.android.tools.r8.graph.H5) this.f37177b).getHolder(), h22)) {
            return;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(this.f43267f.f43625c);
        c6286Yx0.b((C6286Yx0) h22);
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) c6286Yx0.c();
            if (this.f43267f.f43624b.contains(h23)) {
                QZ qz = this.f43267f;
                if (qz.f43629g.size() == 1 && qz.f43629g.contains(h23)) {
                    d();
                } else {
                    this.f43267f.b(h23);
                }
            }
            com.android.tools.r8.graph.H5 h10 = h23.h(h23.L0());
            if (h10 != null && !this.f43267f.a(h10)) {
                return;
            }
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f37176a.g(h23.a1()));
            if (a10 != null) {
                c6286Yx0.b((C6286Yx0) a10);
            }
            AA aa2 = (AA) this.f43267f.f43630h.f43930c.get(h23);
            if (aa2 != null && aa2 != this.f43267f.f43623a) {
                c6286Yx0.b((Iterable) aa2);
            }
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = this.f37176a.v().c(this.f43266e, m22);
        C4798y c4798y = this.f37176a;
        c10.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(c10));
        if (a10 != null) {
            a(a10);
        }
    }

    public final void d() {
        this.f43267f.b();
        a();
        this.f43267f.a();
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 s02 = this.f37176a.v().e(this.f43266e, c4554l1).s0();
        C4798y c4798y = this.f37176a;
        s02.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(s02));
        if (a10 != null) {
            a(a10);
        }
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f37176a.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43266e;
        v10.getClass();
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49583g, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a;
        C11245i c11245i = (C11245i) this.f43267f.f43630h.f43929b.f();
        com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) this.f37177b;
        C4798y<?> c4798y = this.f43267f.f43630h.f43929b;
        c11245i.getClass();
        com.android.tools.r8.graph.H0 a10 = c11245i.a(a23, h53.getHolder(), c4798y, (C4514j) c4798y.f());
        com.android.tools.r8.graph.H5 H10 = a10 != null ? a10.H() : null;
        if (H10 == null) {
            return;
        }
        if (H10.getAccessFlags().J()) {
            d();
        } else {
            this.f43267f.a(H10);
        }
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f37176a.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43266e;
        v10.getClass();
        com.android.tools.r8.graph.H0 p10 = ((C11245i) this.f43267f.f43630h.f43929b.f()).c((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49584h, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a).p();
        if (p10 == null) {
            return;
        }
        if (p10.getHolder().c(this.f37176a) && !p10.getAccessFlags().J()) {
            if (!(p10 instanceof com.android.tools.r8.graph.H5) || p10.getAccessFlags().H()) {
                return;
            }
            this.f43267f.a(p10.H());
            return;
        }
        d();
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f37176a.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43266e;
        v10.getClass();
        com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f43267f.f43630h.f43929b.f()).f((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49582f, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a).r();
        if (r10 == null) {
            return;
        }
        if (r10.getAccessFlags().J()) {
            d();
        } else {
            a(r10.getHolder());
            this.f43267f.a(r10);
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f37176a.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43266e;
        v10.getClass();
        if (((C11245i) this.f43267f.f43630h.f43929b.f()).d((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49581e, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a).p() != null) {
            d();
        }
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 s02 = this.f37176a.v().e(this.f43266e, c4554l1).s0();
        C4798y c4798y = this.f37176a;
        s02.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(s02));
        if (a10 != null) {
            a(a10);
        }
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = this.f37176a.v().c(this.f43266e, m22);
        C4798y c4798y = this.f37176a;
        c10.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(c10));
        if (a10 != null) {
            a(a10);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz v10 = this.f37176a.v();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz = this.f43266e;
        v10.getClass();
        com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f43267f.f43630h.f43929b.f()).c((com.android.tools.r8.graph.A2) v10.a(a22, h52.getReference(), EnumC8071kK.f49580d, abstractC5308Hz, AbstractC9530t40.f52519c).f41111a).r();
        if (r10 == null) {
            return;
        }
        if (r10.getAccessFlags().J()) {
            d();
        } else {
            this.f43267f.a(r10);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.D0 d02) {
        C4477h f10 = this.f43267f.f43630h.f43929b.f();
        if (d02.f36214g.f36190e.c()) {
            C4724u1 b10 = f10.b();
            com.android.tools.r8.graph.A2 m02 = d02.f36214g.m0();
            if (m02 == b10.f38168u6 || m02 == b10.f38176v6) {
                return;
            }
        }
        d();
    }
}
