package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.AbstractC4401d;
import com.android.tools.r8.graph.C4344a;
import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.InterfaceC4575m3;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.threading.ThreadingModule;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C8161kt0 {

    public static final boolean f49798i = true;

    public final C4798y f49799a;

    public final O60 f49800b;

    public final ConcurrentHashMap f49801c = new ConcurrentHashMap();

    public final ConcurrentHashMap f49802d = new ConcurrentHashMap();

    public final ConcurrentHashMap f49803e = new ConcurrentHashMap();

    public final Set f49804f = C4875Al0.a();

    public final Set f49805g = C4875Al0.a();

    public final C7873j80 f49806h;

    public C8161kt0(C4798y c4798y, O60 o60) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f49806h = new C7873j80();
        this.f49799a = c4798y;
        this.f49800b = o60;
    }

    public final void a(ExecutorService executorService, C8195l40 c8195l40, C8659ns0 c8659ns0) {
        C11245i c11245i = (C11245i) this.f49799a.f();
        c8659ns0.b("Trivial field accesses analysis");
        if (!f49798i) {
            c8195l40.b();
        }
        c8659ns0.b("Compute fields of interest");
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f49799a.f()).d()) {
            for (C4460g1 c4460g1 : h22.k1()) {
                int a10 = a(c4460g1, this.f49799a);
                int b10 = AbstractC4291c.b(a10);
                if (b10 == 0) {
                    this.f49804f.add(c4460g1);
                } else if (b10 != 1) {
                    if (!f49798i && a10 != 3) {
                        throw new AssertionError();
                    }
                } else {
                    this.f49805g.add(c4460g1);
                }
            }
            if (this.f49799a.i() || !h22.a(this.f49799a)) {
                for (C4460g1 c4460g12 : h22.A1()) {
                    int a11 = a(c4460g12, this.f49799a);
                    if (a11 == 1) {
                        this.f49804f.add(c4460g12);
                    } else if (!f49798i && a11 != 2 && a11 != 3) {
                        throw new AssertionError();
                    }
                }
            }
        }
        if (!f49798i) {
            Iterator<E> it = ((C11245i) this.f49799a.f()).g().a().iterator();
            while (it.hasNext()) {
                for (C4460g1 c4460g13 : ((com.android.tools.r8.graph.H2) it.next()).I0()) {
                    if (!f49798i && !c4460g13.f37207l.f().isUnknown()) {
                        throw new AssertionError();
                    }
                }
            }
        }
        c8659ns0.d();
        c8659ns0.b("Enqueue methods for reprocessing");
        a(c11245i, executorService);
        c8659ns0.d();
        c8659ns0.b("Clear reads and writes from fields of interest");
        C4594n3 c4594n3 = c11245i.f57404s;
        Iterator it2 = this.f49804f.iterator();
        while (it2.hasNext()) {
            C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(((C4460g1) it2.next()).getReference());
            c4613o3.getClass();
            c4613o3.a();
        }
        Iterator it3 = this.f49802d.o().iterator();
        while (it3.hasNext()) {
            C4613o3 c4613o32 = (C4613o3) c4594n3.f37507a.get(((C4460g1) it3.next()).getReference());
            c4613o32.getClass();
            c4613o32.f37539d = C4363b.f37064a;
        }
        Iterator it4 = this.f49803e.o().iterator();
        while (it4.hasNext()) {
            C4613o3 c4613o33 = (C4613o3) c4594n3.f37507a.get(((C4460g1) it4.next()).getReference());
            c4613o33.getClass();
            c4613o33.a();
        }
        c8659ns0.d();
        c8659ns0.d();
        this.f49804f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8161kt0.this.a((C4460g1) obj);
            }
        });
        this.f49802d.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8161kt0.this.a((C4460g1) obj);
            }
        });
        this.f49803e.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8161kt0.this.b((C4460g1) obj);
            }
        });
        C8570nJ.p H10 = this.f49799a.H();
        O60 o60 = this.f49800b;
        Objects.requireNonNull(o60);
        C7296fi1 c7296fi1 = new C7296fi1(o60);
        C5629Nm a12 = H10.a();
        if (a12 != null) {
            c7296fi1.a(a12);
        }
    }

    public final void b(C4460g1 c4460g1) {
        a(c4460g1);
        C8696o40 a10 = AbstractC8028k40.a();
        C4798y c4798y = this.f49799a;
        a10.a(c4460g1, c4798y, c4798y.f38427t.a(c4460g1.getType()));
    }

    public final boolean b(InterfaceC4575m3 interfaceC4575m3, Map.Entry entry) {
        AbstractC4401d abstractC4401d = (AbstractC4401d) entry.getValue();
        abstractC4401d.getClass();
        return ((abstractC4401d instanceof C4344a) && a((C4460g1) entry.getKey(), false, interfaceC4575m3)) ? false : true;
    }

    public final void b(C11245i c11245i) {
        final C4594n3 c4594n3 = c11245i.f57404s;
        this.f49802d.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8161kt0.this.b(c4594n3, (Map.Entry) obj);
            }
        });
        this.f49802d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8161kt0.this.a((C4460g1) obj, (AbstractC4401d) obj2);
            }
        });
    }

    public final void a(C4460g1 c4460g1) {
        VY vy;
        if (!this.f49799a.r().a(c4460g1, this.f49799a).c(this.f49799a.E())) {
            if (!f49798i && !c4460g1.getType().a(this.f49799a)) {
                throw new AssertionError();
            }
        } else {
            AbstractC8028k40.a().getClass();
            synchronized (c4460g1) {
                vy = (VY) c4460g1.f37207l.a();
                c4460g1.f37207l = vy;
            }
            vy.f45080b |= 2;
        }
    }

    public final void a(C11245i c11245i, ExecutorService executorService) {
        ThreadingModule G10 = this.f49799a.E().G();
        C5467Kr0.a(c11245i.d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8161kt0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, G10, executorService);
        C5467Kr0.a(c11245i.g().a(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8161kt0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, G10, executorService);
        a(c11245i);
        b(c11245i);
        O60 o60 = this.f49800b;
        o60.f42781a.c(this.f49799a.v());
        o60.a(this.f49806h);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8161kt0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        h52.a(new C7994jt0(this, h52));
        h52.d().Q0().p0();
    }

    public static int a(C4460g1 c4460g1, C4798y c4798y) {
        boolean z10;
        C4594n3 c4594n3 = ((C11245i) c4798y.f()).f57404s;
        C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(c4460g1.getReference());
        if (c4613o3 != null && !c4613o3.d() && (c4613o3.f37537b & 2) == 0 && !c4613o3.g() && (c4613o3.f37537b & 1) == 0) {
            F1 f10 = c4460g1.f37207l.f();
            if (f10.r()) {
                AbstractC5746Pm0 w10 = f10.w();
                if (!w10.a(c4798y)) {
                    return 3;
                }
                if (w10.e0()) {
                    return 1;
                }
                if (w10.f0()) {
                    AbstractC5167Fm0 N10 = w10.N();
                    if (N10.f40306c != c4460g1.getReference()) {
                        com.android.tools.r8.graph.M2 m22 = N10.f40306c.f37449i;
                        if (m22.I0()) {
                            z10 = com.android.tools.r8.shaking.R2.a(c4798y, AbstractC8999pu0.a(m22, C8854p10.h(), (C4798y<?>) c4798y).b(), ((C11245i) c4798y.f()).f57405t);
                        } else {
                            if (!AbstractC5167Fm0.f40305d && !m22.E0() && !m22.P0()) {
                                throw new AssertionError();
                            }
                            z10 = false;
                        }
                        if (!z10) {
                            return 1;
                        }
                    }
                }
                return 3;
            }
            if (f10.a0()) {
                return 2;
            }
        }
        return 3;
    }

    public final boolean a(InterfaceC4575m3 interfaceC4575m3, Map.Entry entry) {
        AbstractC4401d abstractC4401d = (AbstractC4401d) entry.getValue();
        abstractC4401d.getClass();
        return ((abstractC4401d instanceof C4344a) && a((C4460g1) entry.getKey(), true, interfaceC4575m3)) ? false : true;
    }

    public final void a(InterfaceC4575m3 interfaceC4575m3, C4460g1 c4460g1, AbstractC4401d abstractC4401d) {
        if (!f49798i && this.f49802d.containsKey(c4460g1)) {
            throw new AssertionError();
        }
        C4613o3 c4613o3 = (C4613o3) ((C4594n3) interfaceC4575m3).f37507a.get(c4460g1.getReference());
        c4613o3.getClass();
        c4613o3.a();
        this.f49806h.f45165b.putAll(((AbstractC8374m80) abstractC4401d.a().f37034a.values().iterator().next()).f45165b);
        this.f49806h.f45165b.putAll(((AbstractC8374m80) this.f49801c.getOrDefault(c4460g1, AbstractC8374m80.f50207d)).f45165b);
    }

    public final void a(C4460g1 c4460g1, AbstractC4401d abstractC4401d) {
        if (!f49798i && this.f49803e.containsKey(c4460g1)) {
            throw new AssertionError();
        }
        this.f49806h.f45165b.putAll(((AbstractC8374m80) abstractC4401d.a().f37034a.values().iterator().next()).f45165b);
        this.f49806h.f45165b.putAll(((AbstractC8374m80) this.f49801c.getOrDefault(c4460g1, AbstractC8374m80.f50207d)).f45165b);
    }

    public final boolean a(C4460g1 c4460g1, boolean z10, InterfaceC4575m3 interfaceC4575m3) {
        boolean z11 = f49798i;
        if (!z11) {
            com.android.tools.r8.graph.F5 a10 = c4460g1.a((InterfaceC4403d1) this.f49799a);
            if (!z11 && a10 == null) {
                throw new AssertionError();
            }
            if (!z11 && !this.f49799a.a(a10).a(this.f49799a, a10)) {
                throw new AssertionError();
            }
        }
        C4613o3 c4613o3 = (C4613o3) ((C4594n3) interfaceC4575m3).f37507a.get(c4460g1.getReference());
        if (c4613o3 == null) {
            if (z11) {
                return false;
            }
            throw new AssertionError((Object) "Expected program field with concrete accesses to be present in field access collection");
        }
        if (!c4613o3.d() && (c4613o3.f37537b & 2) == 0 && !c4613o3.g()) {
            int i10 = c4613o3.f37537b;
            if ((i10 & 32) == 0 && (i10 & 1) == 0) {
                if (z10 && c4460g1.getType().Q0()) {
                    AbstractC8999pu0 d10 = AbstractC8999pu0.a(c4460g1.getReference().getType(), C8854p10.h(), (C4798y<?>) this.f49799a).d();
                    if (d10.r()) {
                        d10 = d10.a().E();
                    }
                    C6949de b10 = d10.b();
                    if (b10 != null) {
                        C4798y c4798y = this.f49799a;
                        if (com.android.tools.r8.shaking.R2.a(c4798y, b10, ((C11245i) c4798y.f()).f57405t)) {
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void a(C11245i c11245i) {
        final C4594n3 c4594n3 = c11245i.f57404s;
        this.f49803e.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8161kt0.this.a(c4594n3, (Map.Entry) obj);
            }
        });
        this.f49803e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8161kt0.this.a(c4594n3, (C4460g1) obj, (AbstractC4401d) obj2);
            }
        });
    }
}
