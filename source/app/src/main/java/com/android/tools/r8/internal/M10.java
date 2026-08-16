package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class M10 {

    public static final boolean f42129c = true;

    public final C4798y f42130a;

    public final K10 f42131b;

    public M10(C4798y c4798y, K10 k10) {
        this.f42130a = c4798y;
        this.f42131b = k10;
    }

    public final void a(final O60 o60) {
        Iterator<com.android.tools.r8.graph.H2> it = ((C11245i) this.f42130a.f()).d().iterator();
        while (it.hasNext()) {
            it.next().h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    M10.this.a(o60, (com.android.tools.r8.graph.H5) obj);
                }
            }, new u.P0());
        }
    }

    public final void a(O60 o60, com.android.tools.r8.graph.H5 h52) {
        if (h52.d().Q0().B0()) {
            return;
        }
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        if (reference.a(this.f42131b.d(reference))) {
            return;
        }
        if (!f42129c) {
            com.android.tools.r8.shaking.I1 a10 = this.f42130a.a(h52);
            this.f42130a.E();
            if (!a10.a(h52)) {
                throw new AssertionError();
            }
        }
        o60.f42781a.a(this.f42131b, h52);
    }

    public final void a(final O60 o60, ExecutorService executorService) {
        C5467Kr0.a(((C11245i) this.f42130a.f()).d(), new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return M10.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return M10.a((List) obj);
            }
        }, this.f42130a.E().G(), executorService).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                M10.this.a(o60, (List) obj);
            }
        });
    }

    public final List a(com.android.tools.r8.graph.H2 h22) {
        final ArrayList arrayList = new ArrayList();
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                M10.this.a(arrayList, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
        return arrayList;
    }

    public final void a(List list, com.android.tools.r8.graph.H5 h52) {
        L10 l10 = new L10(this, this.f42130a, h52);
        h52.a(l10);
        if (l10.f37241e.booleanValue()) {
            if (!f42129c && h52.A().w()) {
                throw new AssertionError();
            }
            list.add(h52);
        }
    }

    public static boolean a(List list) {
        return !list.isEmpty();
    }

    public final void a(O60 o60, List list) {
        o60.a(list, this.f42131b);
    }
}
