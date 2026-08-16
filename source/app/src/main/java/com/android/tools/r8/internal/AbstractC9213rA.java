package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public abstract class AbstractC9213rA {
    public abstract void a(com.android.tools.r8.graph.M2 m22);

    public abstract void a(String str);

    public final void a(List list) {
        Iterator<E> it = list.iterator();
        WM0 wm0 = new WM0();
        C9547tA c9547tA = (C9547tA) this;
        while (it.hasNext()) {
            wm0.a(it.next(), c9547tA);
        }
    }

    public final void a(C4554l1 c4554l1) {
        c4554l1.m().a(new C9380sA(c4554l1, (C9547tA) this));
    }

    public final void a(com.android.tools.r8.graph.A2 a22) {
        a22.m().a(new C9380sA(a22, (C9547tA) this));
    }

    public final void a(com.android.tools.r8.graph.J2 j22) {
        j22.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9213rA.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9213rA.this.a((C4554l1) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9213rA.this.a((com.android.tools.r8.graph.A2) obj);
            }
        });
    }
}
