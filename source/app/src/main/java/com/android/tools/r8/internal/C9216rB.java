package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4401d;
import com.android.tools.r8.graph.C4382c;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C9216rB extends SJ {

    public static final boolean f52000l = true;

    public final C4594n3 f52001k;

    public C9216rB(C4798y c4798y, D00 d00, Function function, ConcurrentHashMap concurrentHashMap, Predicate predicate) {
        super(c4798y, d00, function, concurrentHashMap, predicate);
        this.f52001k = ((C11245i) c4798y.f()).f57404s;
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        if (!f52000l && h22 == null) {
            throw new AssertionError();
        }
        if (h22.c1()) {
            a(false, h22.h(h22.L0()));
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        AbstractC5308Hz v10 = this.f44177e.v();
        v10.getClass();
        com.android.tools.r8.graph.M2 c10 = v10.c(AbstractC5308Hz.g(), m22);
        if (!c10.L0()) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f44177e.g(c10));
            if (a10 != null) {
                a(a10);
                return;
            } else {
                if (!f52000l) {
                    throw new AssertionError();
                }
                return;
            }
        }
        boolean z10 = f52000l;
        if (!z10 && !this.f44177e.w()) {
            throw new AssertionError();
        }
        if (!z10 && !this.f44177e.I().b(m22)) {
            throw new AssertionError();
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        if (m22.I0()) {
            if (!f52000l && !m22.I0()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f44177e.g(m22));
            if (a10 != null) {
                a(a10);
            }
        }
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void f(com.android.tools.r8.graph.M2 m22) {
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        j(c4554l1);
    }

    public final void i(C4554l1 c4554l1) {
        com.android.tools.r8.graph.F5 r10;
        C4554l1 e10 = this.f44177e.v().e(b(), c4554l1);
        if (!e10.s0().I0() || (r10 = ((C11245i) this.f44177e.f()).c(e10).r()) == null || ((C11245i) this.f44177e.f()).a((com.android.tools.r8.graph.G0) r10)) {
            return;
        }
        if (r10.getAccessFlags().n()) {
            a(r10.getHolder());
        }
        C4613o3 c4613o3 = (C4613o3) this.f52001k.f37507a.get(r10.getReference());
        if (c4613o3 != null) {
            AbstractC4401d abstractC4401d = c4613o3.f37539d;
            abstractC4401d.getClass();
            if ((abstractC4401d instanceof C4382c) || c4613o3.f37539d.b() != 1) {
                return;
            }
            c4613o3.f37539d.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9216rB.this.a((com.android.tools.r8.graph.H5) obj);
                }
            });
        }
    }

    public final void j(C4554l1 c4554l1) {
        com.android.tools.r8.graph.F5 r10;
        C4554l1 e10 = this.f44177e.v().e(b(), c4554l1);
        if (e10.s0().I0() && (r10 = ((C11245i) this.f44177e.f()).c(e10).r()) != null && !((C11245i) this.f44177e.f()).a((com.android.tools.r8.graph.G0) r10) && r10.getAccessFlags().n()) {
            a(r10.getHolder());
        }
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        j(c4554l1);
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        if (!f52000l && h52.d().d1()) {
            throw new AssertionError();
        }
        if (this.f44181i.test(h52)) {
            ((E00) this.f44179g.apply(h52)).a(this.f44178f);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        super.a(h52, h53);
        if (h52.getAccessFlags().n()) {
            a(h52.getHolder());
        }
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void a(com.android.tools.r8.graph.D0 d02) {
        a(2, d02.f36214g);
    }
}
