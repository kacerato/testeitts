package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4690s5;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C5035Df;
import com.android.tools.r8.internal.C5093Ef;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7374g80;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.TU;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class Q {

    public static final boolean f56892h = true;

    public final C5093Ef f56893a;

    public final ConcurrentHashMap f56894b = new ConcurrentHashMap();

    public final LinkedList f56895c = new LinkedList();

    public final ConcurrentHashMap f56896d = new ConcurrentHashMap();

    public final C7541h80 f56897e = C7541h80.l();

    public final ConcurrentHashMap f56898f = new ConcurrentHashMap();

    public final ConcurrentHashMap f56899g = new ConcurrentHashMap();

    public Q(C5093Ef c5093Ef) {
        this.f56893a = c5093Ef;
    }

    public static void a(N n10, com.android.tools.r8.graph.H5 h52, H1 h12) {
        n10.f56780W.a(h52);
        n10.d(C11144c0.f57206a, h52, h12);
    }

    public final void b(com.android.tools.r8.graph.H5 h52) {
        this.f56895c.add(h52);
    }

    public final C5035Df c(final com.android.tools.r8.graph.H5 h52) {
        return (C5035Df) this.f56894b.computeIfAbsent(h52.getReference(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return Q.this.a(h52, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final C5035Df a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        return this.f56893a.a(h52);
    }

    public final void a(com.android.tools.r8.graph.I0 i02) {
        com.android.tools.r8.graph.I0 i03 = (com.android.tools.r8.graph.I0) this.f56898f.put(i02.f36245e, i02);
        if (!f56892h && i03 != null && i03 != i02) {
            throw new AssertionError();
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) this.f56896d.put(h52.d().getReference(), h52);
        if (!f56892h && h53 != null) {
            throw new AssertionError();
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.E0 e02) {
        ((Set) this.f56899g.computeIfAbsent(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set a10;
                a10 = C4875Al0.a();
                return a10;
            }
        })).add(e02);
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        C7541h80 c7541h80 = this.f56897e;
        Function a10 = TU.a(new C11323ma());
        c7541h80.getClass();
        consumer.accept((H1) c7541h80.a(a10, new C7333fv(C7374g80.f48192a, h52)));
    }

    public final void a(final N n10) {
        if (!f56892h && !n10.f56786b.b()) {
            throw new AssertionError();
        }
        n10.f56795f0.getClass();
        R0 r02 = R0.f56919a;
        Iterator<E> it = this.f56895c.iterator();
        while (it.hasNext()) {
            n10.f56776S.a((com.android.tools.r8.graph.H5) it.next());
        }
        for (com.android.tools.r8.graph.H5 h52 : this.f56896d.values()) {
            if (!f56892h) {
                M m10 = n10.f56768K;
                if (m10.f56716a.contains(h52.d())) {
                    throw new AssertionError();
                }
            }
            n10.a(r02, h52);
            n10.f56776S.a(h52, h52, r02);
        }
        n10.f56760C.addAll(this.f56898f.values());
        this.f56899g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Q.a(N.this, (com.android.tools.r8.graph.H2) obj, (Set) obj2);
            }
        });
        this.f56897e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Q.a(N.this, (com.android.tools.r8.graph.H5) obj, (H1) obj2);
            }
        });
    }

    public static void a(N n10, com.android.tools.r8.graph.H2 h22, Set set) {
        C4690s5 c4690s5 = n10.f56812o;
        C4514j c4514j = (C4514j) n10.f56794f.f();
        c4690s5.getClass();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            c4690s5.a(c4514j, ((com.android.tools.r8.graph.E0) it.next()).f36245e, h22);
        }
    }
}
