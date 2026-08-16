package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;
import java.util.function.Consumer;

public final class P70 extends AbstractC8710o9 {

    public final C9957vg f43130c;

    public final C9362s4 f43131d;

    public final C8543n9 f43132e;

    public P70(C9957vg c9957vg, C9362s4 c9362s4, C8543n9 c8543n9) {
        this.f43130c = c9957vg;
        this.f43131d = c9362s4;
        this.f43132e = c8543n9;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22) {
        this.f43132e.f50521c.add(h22);
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22) {
        this.f43132e.f50521c.add(h22);
    }

    @Override
    public final void c(com.android.tools.r8.graph.H2 h22) {
        this.f43132e.f50521c.add(h22);
    }

    @Override
    public final void d(com.android.tools.r8.graph.H2 h22) {
        this.f43132e.f50521c.add(h22);
    }

    @Override
    public final void e(com.android.tools.r8.graph.H2 h22) {
        this.f43132e.f50521c.add(h22);
    }

    @Override
    public final void f(com.android.tools.r8.graph.H2 h22) {
        this.f43132e.f50521c.add(h22);
    }

    @Override
    public final void z(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f43130c.b(h52, h53);
        this.f43132e.f50521c.add(h52.getHolder());
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        this.f43130c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((K70) obj).a(com.android.tools.r8.graph.H2.this.getType());
            }
        }, h23);
        final com.android.tools.r8.graph.H5 H12 = h22.H1();
        if (H12 != null) {
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    P70.this.b(H12, (com.android.tools.r8.graph.H5) obj);
                }
            };
            h23.getClass();
            h23.g(consumer, EnumC6871d70.f47286b);
        }
    }

    public final void b(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        C9957vg c9957vg = this.f43130c;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                P70.a(com.android.tools.r8.graph.H5.this, (K70) obj);
            }
        };
        c9957vg.getClass();
        c9957vg.a(h53.getReference(), consumer);
    }

    @Override
    public final void b(C4798y c4798y) {
        this.f43130c.a(c4798y);
    }

    public static void a(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference());
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.D5 d52) {
        Y70.a(h22, d52, this.f43130c, this.f43131d);
    }

    @Override
    public final Set a() {
        return this.f43132e.f50521c;
    }
}
