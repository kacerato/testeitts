package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.function.BiConsumer;

public final class TV extends AbstractC5276Hj {

    public static final boolean f44490h = true;

    public final AbstractMap f44491f;

    public final AbstractMap f44492g;

    public TV(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractMap abstractMap, AbstractMap abstractMap2) {
        super(c4798y, abstractC5308Hz);
        this.f44491f = abstractMap;
        this.f44492g = abstractMap2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        boolean z10 = f44490h;
        if (!z10 && nw.f41112b != null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) nw.f41111a;
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) this.f44492g.get(a23);
        if (!z10 && a23.a(a24)) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a25 = a23;
        while (a24 != null) {
            a25 = a24;
            a24 = (com.android.tools.r8.graph.A2) this.f44492g.get(a24);
        }
        com.android.tools.r8.graph.proto.j jVar2 = nw.f42624e;
        return new NW(a23, a25, nw.f42622c, nw.f42623d, jVar2).a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C7835iw b(C7835iw c7835iw) {
        boolean z10 = f44490h;
        if (!z10 && c7835iw.b()) {
            throw new AssertionError();
        }
        if (!z10 && c7835iw.a()) {
            throw new AssertionError();
        }
        C4554l1 c4554l1 = (C4554l1) c7835iw.f41111a;
        return new C7835iw(c4554l1, (C4554l1) this.f44491f.getOrDefault(c4554l1, c4554l1), null, null);
    }

    @Override
    public final TV c() {
        return this;
    }

    public final TV a(C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final R00 r00, AbstractC5308Hz abstractC5308Hz2) {
        final C4724u1 b10 = c4798y.b();
        final SV sv = new SV(c4798y, abstractC5308Hz2, new IdentityHashMap(), new IdentityHashMap());
        this.f44491f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TV.a(AbstractC5308Hz.this, r00, b10, sv, (C4554l1) obj, (C4554l1) obj2);
            }
        });
        final ArrayDeque arrayDeque = new ArrayDeque();
        AbstractC5308Hz abstractC5308Hz3 = abstractC5308Hz;
        while (abstractC5308Hz3.l()) {
            R00 d10 = abstractC5308Hz3.d();
            arrayDeque.addFirst(d10);
            abstractC5308Hz3 = d10.f43777d;
        }
        this.f44492g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                TV.a(Deque.this, abstractC5308Hz, r00, b10, sv, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
        return new TV(sv.f44222a, sv.f44223b, sv.f44224c, sv.f44225d);
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, R00 r00, C4724u1 c4724u1, SV sv, C4554l1 c4554l1, C4554l1 c4554l12) {
        C4554l1 e10 = abstractC5308Hz.e(r00, c4554l12);
        C4554l1 a10 = e10.a(abstractC5308Hz.c(r00, c4554l1.s0()), c4724u1);
        if (a10.a(e10)) {
            return;
        }
        if (!SV.f44221e) {
            sv.getClass();
            if (a10.a(e10)) {
                throw new AssertionError();
            }
        }
        sv.f44224c.put(a10, e10);
    }

    public static void a(Deque deque, AbstractC5308Hz abstractC5308Hz, R00 r00, C4724u1 c4724u1, SV sv, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        Iterator it = deque.iterator();
        while (it.hasNext()) {
            R00 r002 = (R00) it.next();
            r002.getClass();
            if (r002 instanceof C6840cx0) {
                a23 = r002.e().f(a23);
            } else {
                a23 = r002.c(a23);
            }
        }
        com.android.tools.r8.graph.A2 a10 = a23.a(abstractC5308Hz.c(r00, a22.s0()), c4724u1);
        if (a10.a(a23)) {
            return;
        }
        if (!SV.f44221e) {
            sv.getClass();
            if (a10.a(a23)) {
                throw new AssertionError();
            }
        }
        sv.f44225d.put(a10, a23);
    }
}
