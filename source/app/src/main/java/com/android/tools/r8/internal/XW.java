package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Consumer;

public final class XW extends AbstractC6143Wj {

    public final AbstractC8374m80 f45729f;

    public final IdentityHashMap f45730g;

    /* JADX WARN: Multi-variable type inference failed */
    public XW(C4798y c4798y, C4387c4 c4387c4, AbstractC8374m80 abstractC8374m80, AbstractC8374m80 abstractC8374m802) {
        super(c4798y, c4387c4);
        this.f45730g = new IdentityHashMap();
        this.f45729f = abstractC8374m80;
        for (com.android.tools.r8.graph.H5 h52 : abstractC8374m802.f45165b.values()) {
            C5058Dq c5058Dq = (C5058Dq) this.f45730g.computeIfAbsent(h52.getHolder(), TU.a(new X11()));
            c5058Dq.getClass();
            c5058Dq.a(h52.getReference());
        }
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.H2 h22) {
        C5058Dq c5058Dq2 = (C5058Dq) this.f45730g.get(h22);
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(c5058Dq2.f39661b);
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H2 h22) {
        return h22.isInterface() && super.c(h22);
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
        this.f45730g.remove(h22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        final C5058Dq c5058Dq = (C5058Dq) this.f45730g.computeIfAbsent(h22, TU.a(new X11()));
        C4387c4 c4387c4 = this.f45516b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                XW.this.a(c5058Dq, (com.android.tools.r8.graph.H2) obj);
            }
        };
        c4387c4.getClass();
        c4387c4.a(EnumC6871d70.f47286b, consumer, h22);
        for (com.android.tools.r8.graph.H2 h23 : (List) this.f45516b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)) {
            if (!h23.isInterface()) {
                for (com.android.tools.r8.graph.F2 f22 : c5058Dq.f39661b) {
                    C4514j c4514j = (C4514j) this.f45515a.f();
                    if (C4514j.f37304i) {
                        c4514j.getClass();
                    } else {
                        c4514j.c();
                    }
                    Z4.c<?> o10 = c4514j.b(h23, f22.b(), f22.a()).o();
                    if (o10 != null && o10.d().e0()) {
                        com.android.tools.r8.graph.H5 r10 = o10.r();
                        if (!r10.getHolder().isInterface() && r10.getHolder() != h23) {
                            this.f45729f.add((AbstractC8374m80) r10);
                        }
                    }
                }
            }
        }
    }

    @Override
    public final void a(Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        for (com.android.tools.r8.graph.H2 h23 : (List) this.f45516b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)) {
            if (h23.isInterface()) {
                consumer.accept(h23);
            }
        }
    }
}
