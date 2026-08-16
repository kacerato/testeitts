package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C10571zI extends CW {

    public static final boolean f54347j = true;

    public final C4798y f54348g;

    public final IdentityHashMap f54349h;

    public final Consumer f54350i;

    public C10571zI(C4798y c4798y, C4387c4 c4387c4, C10601zX c10601zX, Consumer consumer) {
        super(c4798y, c4387c4, c10601zX);
        this.f54349h = new IdentityHashMap();
        this.f54348g = c4798y;
        this.f54350i = consumer;
    }

    public static boolean n(com.android.tools.r8.graph.H2 h22) {
        return !h22.isInterface();
    }

    @Override
    public final void a(Collection collection) {
        super.a(collection);
        if (f54347j) {
            return;
        }
        a((Set) collection);
    }

    public final void b(AX ax, final com.android.tools.r8.graph.H2 h22) {
        ax.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10571zI.this.a(h22, (com.android.tools.r8.graph.F2) obj, (InterfaceC10100wX) obj2);
            }
        });
    }

    @Override
    public final boolean c(com.android.tools.r8.graph.H2 h22) {
        return h22.isInterface() && super.c(h22);
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
        this.f54349h.remove(h22);
    }

    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        if (!f54347j && this.f54349h.containsKey(h22)) {
            throw new AssertionError();
        }
        c(m(h22), h22);
    }

    public final AX m(com.android.tools.r8.graph.H2 h22) {
        final AX ax = new AX(new HashMap());
        C4387c4 c4387c4 = this.f45516b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10571zI.this.a(ax, (com.android.tools.r8.graph.H2) obj);
            }
        };
        c4387c4.getClass();
        Z60 z60 = EnumC6871d70.f47286b;
        c4387c4.a(z60, consumer, h22);
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10571zI.this.a(ax, (com.android.tools.r8.graph.H5) obj);
            }
        }, z60);
        this.f54349h.put(h22, ax);
        return ax;
    }

    public final void c(final AX ax, com.android.tools.r8.graph.H2 h22) {
        this.f45516b.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10571zI.n((com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10571zI.this.b(ax, (com.android.tools.r8.graph.H2) obj);
            }
        }, h22);
    }

    @Override
    public final void a(Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        for (com.android.tools.r8.graph.H2 h23 : (List) this.f45516b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)) {
            if (h23.isInterface()) {
                consumer.accept(h23);
            }
        }
    }

    public final void a(AX ax, com.android.tools.r8.graph.H2 h22) {
        AX ax2 = (AX) this.f54349h.get(h22);
        if (!f54347j && ax2 == null) {
            throw new AssertionError();
        }
        ax.a(this.f54348g, ax2);
    }

    public final void a(AX ax, com.android.tools.r8.graph.H5 h52) {
        C10601zX c10601zX = this.f39257f;
        c10601zX.getClass();
        InterfaceC10100wX a10 = c10601zX.a(h52.getReference());
        if (a10.g() || a10.f()) {
            return;
        }
        if (!f54347j && !a10.isUnknown()) {
            AbstractC8455mg d10 = a10.d();
            d10.getClass();
            if (!(d10 instanceof C9456sg)) {
                throw new AssertionError();
            }
        }
        C4798y c4798y = this.f54348g;
        ax.getClass();
        ax.b(c4798y, h52.x(), a10);
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.F2 f22, InterfaceC10100wX interfaceC10100wX) {
        C11245i c11245i = (C11245i) this.f54348g.f();
        if (!C4514j.f37304i) {
            c11245i.c();
        } else {
            c11245i.getClass();
        }
        com.android.tools.r8.graph.Z4 b10 = c11245i.b(h22, f22.b(), f22.a());
        if (b10.h()) {
            if (!f54347j && !b10.k().y()) {
                throw new AssertionError();
            }
            return;
        }
        if (!f54347j && !b10.w()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H0 p10 = b10.p();
        p10.getClass();
        if (!(p10 instanceof com.android.tools.r8.graph.H5)) {
            this.f54350i.accept(f22);
            return;
        }
        com.android.tools.r8.graph.H5 r10 = b10.r();
        if (r10 == null || r10.getHolder() == h22) {
            return;
        }
        InterfaceC10100wX a10 = a(this.f54348g, h22, r10, interfaceC10100wX, this.f39257f);
        if (a10.g()) {
            return;
        }
        C10601zX c10601zX = this.f39257f;
        C4798y c4798y = this.f54348g;
        c10601zX.getClass();
        c10601zX.b(c4798y, r10.getReference(), a10);
    }

    public static InterfaceC10100wX a(final C4798y c4798y, final com.android.tools.r8.graph.H2 h22, final com.android.tools.r8.graph.H5 h52, InterfaceC10100wX interfaceC10100wX, C10601zX c10601zX) {
        if (interfaceC10100wX.g() || interfaceC10100wX.isUnknown()) {
            return interfaceC10100wX;
        }
        if (interfaceC10100wX.f()) {
            if (f54347j) {
                return C9371s7.f52282a;
            }
            throw new AssertionError();
        }
        boolean z10 = f54347j;
        if (!z10 && !interfaceC10100wX.c()) {
            throw new AssertionError();
        }
        AbstractC10267xX a10 = interfaceC10100wX.j().a(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10571zI.a(C4798y.this, h52, h22, (C10664zt) obj);
            }
        }, h52.x());
        c10601zX.getClass();
        if (!c10601zX.a(h52.getReference()).f() || !(a10 instanceof C9456sg)) {
            return a10;
        }
        C9456sg j10 = a10.j();
        if (z10 || j10.f52432b.values().size() == 1) {
            return (InterfaceC10100wX) j10.f52432b.values().iterator().next();
        }
        throw new AssertionError();
    }

    public static C10664zt a(final C4798y c4798y, com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.H2 h22, C10664zt c10664zt) {
        boolean a10;
        if (c10664zt.i()) {
            a10 = c10664zt.c().a(c4798y.b()).a(h52.p());
        } else {
            a10 = c10664zt.l() ? true : c10664zt.n().b().F().a(new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    boolean c10;
                    c10 = ((C11245i) C4798y.this.f()).c(h22.getType(), (com.android.tools.r8.graph.M2) obj);
                    return c10;
                }
            });
        }
        if (a10) {
            return new C8166kv(AbstractC8999pu0.a(h52.p(), C8854p10.h(), (C4798y<?>) c4798y).b());
        }
        return null;
    }

    public final void a(Set set) {
        if (!f54347j && !set.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((com.android.tools.r8.graph.H2) obj).isInterface();
            }
        }).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10571zI.this.a((com.android.tools.r8.graph.H2) obj);
            }
        })) {
            throw new AssertionError();
        }
    }
}
