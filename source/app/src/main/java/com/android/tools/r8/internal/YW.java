package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.function.Consumer;

public final class YW extends AbstractC6143Wj {

    public final IdentityHashMap f46007f;

    public final AbstractC8374m80 f46008g;

    public YW(C4798y c4798y, C4387c4 c4387c4, AbstractC8374m80 abstractC8374m80, AbstractC8374m80 abstractC8374m802) {
        super(c4798y, c4387c4);
        this.f46007f = new IdentityHashMap();
        this.f46008g = AbstractC8374m80.c();
        abstractC8374m80.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                YW.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
        abstractC8374m802.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                YW.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.H5 h52) {
        C5058Dq c5058Dq = (C5058Dq) this.f46007f.computeIfAbsent(h52.getHolder(), TU.a(new X11()));
        c5058Dq.getClass();
        c5058Dq.a(h52.getReference());
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
        this.f46007f.remove(h22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        final C5058Dq c5058Dq = (C5058Dq) this.f46007f.computeIfAbsent(h22, TU.a(new X11()));
        C4387c4 c4387c4 = this.f45516b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                YW.this.a(c5058Dq, (com.android.tools.r8.graph.H2) obj);
            }
        };
        c4387c4.getClass();
        c4387c4.a(EnumC6871d70.f47286b, consumer, h22);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                YW.this.a(c5058Dq, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.H2 h22) {
        C5058Dq c5058Dq2 = (C5058Dq) this.f46007f.get(h22);
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(c5058Dq2.f39661b);
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.H5 h52) {
        c5058Dq.getClass();
        if (c5058Dq.f39661b.contains(h52.x())) {
            this.f46008g.add((AbstractC8374m80) h52);
        }
    }
}
