package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.InterfaceC11503x4;
import java.util.function.Consumer;

public final class X70 implements InterfaceC11503x4 {

    public final C9957vg f45624c;

    public X70(C9957vg c9957vg) {
        this.f45624c = c9957vg;
    }

    public static void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference()).a(h52.getHolder().getReference()).a(h52, h53.getReference());
    }

    public static void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference()).a(h52.getHolder().getReference()).a(h52, h53.getReference());
    }

    @Override
    public final void i(final com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.H5 h53) {
        C9957vg c9957vg = this.f45624c;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                X70.b(com.android.tools.r8.graph.H5.this, h52, (K70) obj);
            }
        };
        c9957vg.getClass();
        c9957vg.a(h52.getReference(), consumer);
    }

    @Override
    public final void j(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f45624c.b(h53, h52);
    }

    @Override
    public final void q(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f45624c.b(h53, h52);
    }

    @Override
    public final void t(final com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.H5 h53) {
        C9957vg c9957vg = this.f45624c;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                X70.a(com.android.tools.r8.graph.H5.this, h52, (K70) obj);
            }
        };
        c9957vg.getClass();
        c9957vg.a(h52.getReference(), consumer);
    }
}
