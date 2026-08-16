package com.android.tools.r8.internal;

import com.android.tools.r8.graph.Z4;
import java.util.Collections;
import java.util.Set;
import java.util.function.Consumer;

public final class C5831Ra extends AbstractC5947Ta {

    public static final boolean f43934f = true;

    public final C5448Ki f43935c;

    public final C7873j80 f43936d;

    public final InterfaceC6604ba f43937e;

    public C5831Ra(C5448Ki c5448Ki, InterfaceC6604ba interfaceC6604ba) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f43936d = new C7873j80();
        this.f43935c = c5448Ki;
        this.f43937e = interfaceC6604ba;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
    }

    @Override
    public final void c(com.android.tools.r8.graph.I0 i02) {
    }

    @Override
    public final void e(com.android.tools.r8.graph.I0 i02) {
    }

    @Override
    public final void u(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        a(h52);
    }

    @Override
    public final void v(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        a(h52);
    }

    @Override
    public final void z(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.I0 i02) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.I0 i02) {
    }

    @Override
    public final void a(com.android.tools.r8.graph.I0 i02) {
    }

    @Override
    public final Set b() {
        return Collections.EMPTY_SET;
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f43934f;
        if (!z10 && this.f43937e.get().a(h52)) {
            throw new AssertionError();
        }
        if (!z10 && !h52.d().Q0().t0()) {
            throw new AssertionError();
        }
        this.f43936d.add((C7873j80) h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, C10404yI c10404yI) {
        c10404yI.a(h22, h22, m22);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, C6830cu c6830cu) {
        a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.M2 m22, Z4.a aVar) {
        a(h52);
    }

    @Override
    public final void a() {
        if (!f43934f) {
            C5448Ki c5448Ki = this.f43935c;
            boolean z10 = C5448Ki.f41737h;
            if (!z10 && c5448Ki.f41742e.f53861c.size() != 0) {
                throw new AssertionError();
            }
            if (!z10) {
                if (c5448Ki.f41743f.f53861c.size() != 0) {
                    throw new AssertionError();
                }
            } else {
                c5448Ki.getClass();
            }
        }
        C5448Ki c5448Ki2 = this.f43935c;
        c5448Ki2.f41744g = c5448Ki2.f41739b.f49522a.k();
        this.f43935c.a(this.f43936d);
        C5448Ki c5448Ki3 = this.f43935c;
        c5448Ki3.f41743f.a((Consumer) null);
        c5448Ki3.f41742e.a((Consumer) null);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        a(h52);
    }
}
