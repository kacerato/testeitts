package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.Z4;
import java.util.Set;
import java.util.function.Consumer;

public final class R70 extends AbstractC5947Ta {

    public final C9957vg f43808c;

    public final C9362s4 f43809d;

    public final AbstractC5947Ta f43810e;

    public R70(C9957vg c9957vg, C9362s4 c9362s4, AbstractC5947Ta abstractC5947Ta) {
        this.f43808c = c9957vg;
        this.f43809d = c9362s4;
        this.f43810e = abstractC5947Ta;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f43808c.a(h52, h53);
        this.f43810e.a(h52, h53);
    }

    @Override
    public final void b(com.android.tools.r8.graph.I0 i02) {
        this.f43810e.b(i02);
    }

    @Override
    public final void c(com.android.tools.r8.graph.I0 i02) {
        this.f43810e.c(i02);
    }

    @Override
    public final void e(com.android.tools.r8.graph.I0 i02) {
        this.f43810e.e(i02);
    }

    @Override
    public final void u(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f43808c.a((com.android.tools.r8.graph.D5) h53, h52);
        this.f43810e.u(h52, h53);
    }

    @Override
    public final void v(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f43808c.b(h53, h52);
        this.f43810e.v(h52, h53);
    }

    @Override
    public final void z(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f43808c.b(h52, h53);
        this.f43810e.z(h52, h53);
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
        this.f43810e.b(h22, e02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.I0 i02) {
        this.f43810e.a(i02);
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H5 h52, C6830cu c6830cu) {
        if (this.f43809d.f52267b) {
            this.f43808c.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R70.a(com.android.tools.r8.graph.H5.this, (L70) obj);
                }
            });
        }
        this.f43810e.a(h52, c6830cu);
    }

    @Override
    public final Set b() {
        return this.f43810e.b();
    }

    public static void a(com.android.tools.r8.graph.H5 h52, L70 l70) {
        C7891jE0 c7891jE0 = new C7891jE0();
        l70.getClass();
        l70.a(h52.getReference(), c7891jE0);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.I0 i02) {
        this.f43810e.a(h22, i02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        this.f43808c.a(d52, h52);
        this.f43810e.a(d52, h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
        this.f43810e.a(h22, e02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        this.f43808c.a(h52, h02);
        this.f43810e.a(h52, h02);
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.M2 m22, Z4.a aVar) {
        if (this.f43809d.f52267b) {
            final U6 u62 = new U6();
            aVar.a(C6628bi.b(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R70.this.a(h52, u62, (C4516j1) obj);
                }
            });
            if (u62.c()) {
                this.f43808c.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ((K70) obj).a(com.android.tools.r8.graph.H5.this.getReference());
                    }
                }, h52.getHolder());
            }
        }
        this.f43810e.a(h52, m22, aVar);
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, U6 u62, C4516j1 c4516j1) {
        this.f43808c.a(c4516j1.getReference(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                R70.a(com.android.tools.r8.graph.H5.this, (K70) obj);
            }
        });
        u62.e();
    }

    public static void a(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference());
    }

    @Override
    public final void a() {
        this.f43810e.a();
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, C10404yI c10404yI) {
        this.f43810e.a(h22, m22, c10404yI);
    }
}
