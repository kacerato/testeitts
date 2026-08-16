package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC9148qo0;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;

public final class P00 extends AbstractC9148qo0 {

    public static final boolean f43098c = true;

    public final Set f43099a;

    public final Map f43100b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.Map] */
    public P00(LinkedHashMap linkedHashMap) {
        if (!f43098c && linkedHashMap.isEmpty()) {
            throw new AssertionError();
        }
        Set a10 = C4875Al0.a(linkedHashMap.o(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.J2) obj).S();
            }
        });
        this.f43099a = C8570nJ.b() ? Collections.unmodifiableSet(a10) : a10;
        boolean z10 = TU.f44487a;
        this.f43100b = C8570nJ.b() ? Collections.unmodifiableMap(linkedHashMap) : linkedHashMap;
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, C9648to0 c9648to0, AbstractC9148qo0.a aVar) {
        com.android.tools.r8.graph.M2 m22 = c9648to0.f52698b;
        abstractC5308Hz.getClass();
        C9648to0 c9648to02 = new C9648to0(abstractC5308Hz.c(AbstractC5308Hz.g(), m22));
        aVar.f51894e.put(c9648to02.c(), c9648to02);
    }

    @Override
    public final InterfaceC9020q1 b(com.android.tools.r8.graph.A2 a22) {
        return (C9982vo0) this.f43100b.get(a22);
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        return this.f43099a.contains(m22);
    }

    @Override
    public final AbstractC9148qo0 c(C4798y c4798y) {
        final C4477h f10 = c4798y.f();
        return (AbstractC9148qo0) a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P00.this.a(f10, (C9648to0) obj, (AbstractC9148qo0.a) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P00.this.a(f10, (C9982vo0) obj, (AbstractC9148qo0.a) obj2);
            }
        });
    }

    public final AbstractC9148qo0 a(final AbstractC5308Hz abstractC5308Hz) {
        return (AbstractC9148qo0) a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P00.a(AbstractC5308Hz.this, (C9648to0) obj, (AbstractC9148qo0.a) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P00.a(AbstractC5308Hz.this, (C9982vo0) obj, (AbstractC9148qo0.a) obj2);
            }
        });
    }

    @Override
    public final AbstractC9148qo0 b(C4798y c4798y) {
        return (AbstractC9148qo0) a(c4798y);
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, C9982vo0 c9982vo0, AbstractC9148qo0.a aVar) {
        com.android.tools.r8.graph.A2 c10 = c9982vo0.c();
        abstractC5308Hz.getClass();
        C9982vo0 c9982vo02 = new C9982vo0(abstractC5308Hz.d(AbstractC5308Hz.g(), c10));
        aVar.f51894e.put(c9982vo02.c(), c9982vo02);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return this.f43100b.containsKey(m22);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return this.f43100b.containsKey(a22);
    }

    @Override
    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0) {
        a(interfaceC6160Wr0, interfaceC6160Wr0);
    }

    public final void a(C4477h c4477h, C9648to0 c9648to0, AbstractC9148qo0.a aVar) {
        AbstractC9109qb0 abstractC9109qb0;
        com.android.tools.r8.graph.M2 m22 = c9648to0.f52698b;
        c4477h.getClass();
        m22.getClass();
        if (c4477h.c(m22.o0()) == null && !((abstractC9109qb0 = c4477h.j().f50596E1) != null && (abstractC9109qb0 instanceof C8942pb0) && abstractC9109qb0.b().a(m22))) {
            return;
        }
        aVar.f51894e.put(c9648to0.f52698b, c9648to0);
    }

    public static void a(com.android.tools.r8.graph.O5 o52, C9648to0 c9648to0, AbstractC9148qo0.a aVar) {
        if (o52.f36682e.contains(c9648to0.f52698b)) {
            return;
        }
        aVar.f51894e.put(c9648to0.c(), c9648to0);
    }

    @Override
    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0, InterfaceC6160Wr0 interfaceC6160Wr02) {
        Iterator it = this.f43100b.values().iterator();
        while (it.hasNext()) {
            ((AbstractC10483yo0) it.next()).a(interfaceC6160Wr0, interfaceC6160Wr02);
        }
    }

    @Override
    public final AbstractC9148qo0 a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        return (AbstractC9148qo0) c8659ns0.a("Rewrite NonEmptyStartupProfile", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return P00.this.a(abstractC5308Hz);
            }
        });
    }

    @Override
    public final InterfaceC8185l1 a() {
        return new AbstractC9148qo0.a(this.f43100b.size());
    }

    public final void a(C4477h c4477h, C9982vo0 c9982vo0, AbstractC9148qo0.a aVar) {
        AbstractC9109qb0 abstractC9109qb0;
        com.android.tools.r8.graph.A2 c10 = c9982vo0.c();
        c4477h.getClass();
        c10.getClass();
        AbstractC4744v2 m02 = c10.m0();
        if (m02.b(c4477h.c(m02.s0())) == null && !((abstractC9109qb0 = c4477h.j().f50596E1) != null && (abstractC9109qb0 instanceof C8942pb0) && abstractC9109qb0.b().a(c10))) {
            return;
        }
        aVar.f51894e.put(c9982vo0.c(), c9982vo0);
    }

    @Override
    public final AbstractC9148qo0 a(final com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0) {
        c8659ns0.b("Prune NonEmptyStartupProfile");
        AbstractC9148qo0 abstractC9148qo0 = (AbstractC9148qo0) a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P00.a(com.android.tools.r8.graph.O5.this, (C9648to0) obj, (AbstractC9148qo0.a) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P00.a(com.android.tools.r8.graph.O5.this, (C9982vo0) obj, (AbstractC9148qo0.a) obj2);
            }
        });
        c8659ns0.d();
        return abstractC9148qo0;
    }

    public static void a(com.android.tools.r8.graph.O5 o52, C9982vo0 c9982vo0, AbstractC9148qo0.a aVar) {
        if (o52.a(c9982vo0.c())) {
            return;
        }
        aVar.f51894e.put(c9982vo0.c(), c9982vo0);
    }
}
