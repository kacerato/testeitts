package com.android.tools.r8.internal;

import com.android.tools.r8.graph.Z4;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C5889Sa extends AbstractC5947Ta {

    public static final boolean f44231f = true;

    public final com.android.tools.r8.shaking.Q f44232c;

    public final Y9 f44233d;

    public final BiConsumer f44234e;

    public C5889Sa(com.android.tools.r8.shaking.Q q10, Y9 y92, BiConsumer biConsumer) {
        this.f44232c = q10;
        this.f44233d = y92;
        this.f44234e = biConsumer;
    }

    @Override
    public final void a() {
    }

    @Override
    public final Set b() {
        return this.f44232c.f56896d.o();
    }

    @Override
    public final void c(com.android.tools.r8.graph.I0 i02) {
        this.f44232c.a(i02);
    }

    @Override
    public final void e(com.android.tools.r8.graph.I0 i02) {
        this.f44232c.a(i02);
    }

    @Override
    public final void u(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f44232c.a(h52);
    }

    @Override
    public final void v(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f44232c.a(h52);
    }

    @Override
    public final void z(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f44232c.a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, C10404yI c10404yI) {
        this.f44234e.accept(h22, m22);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.I0 i02) {
        this.f44232c.a(h22, i02);
        this.f44232c.a(i02);
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
        this.f44232c.a(h22, e02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
        this.f44232c.a(h22, e02);
    }

    @Override
    public final void b(com.android.tools.r8.graph.I0 i02) {
        this.f44232c.a(i02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.I0 i02) {
        this.f44232c.a(i02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, C6830cu c6830cu) {
        this.f44232c.a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        this.f44232c.a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.M2 m22, Z4.a aVar) {
        this.f44232c.a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (!f44231f && this.f44233d.a(h52)) {
            throw new AssertionError();
        }
        this.f44232c.a(h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        this.f44232c.a(h52);
    }
}
