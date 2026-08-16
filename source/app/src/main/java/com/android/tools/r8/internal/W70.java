package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class W70 implements Q40 {

    public final C9957vg f45310a;

    public W70(C9957vg c9957vg) {
        this.f45310a = c9957vg;
    }

    @Override
    public final void a(List list, final com.android.tools.r8.graph.H5 h52) {
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) it.next();
            C9957vg c9957vg = this.f45310a;
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    W70.a(com.android.tools.r8.graph.H5.this, (K70) obj);
                }
            };
            c9957vg.getClass();
            c9957vg.a(h53.getReference(), consumer);
        }
    }

    public static void a(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference()).a(h52.getHolder().getReference());
    }

    @Override
    public final void a(C4798y c4798y) {
        this.f45310a.a(c4798y);
    }
}
