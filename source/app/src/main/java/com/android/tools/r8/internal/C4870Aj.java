package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C4870Aj {

    public static final boolean f38697f = true;

    public final C4798y f38698a;

    public final Set f38699b;

    public final C5591Mw f38700c;

    public final List f38701d;

    public final C8570nJ f38702e;

    public C4870Aj(C4798y c4798y, Set set, C5591Mw c5591Mw, List list) {
        this.f38698a = c4798y;
        this.f38699b = set;
        this.f38700c = c5591Mw;
        this.f38701d = list;
        this.f38702e = c4798y.E();
    }

    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.Map, java.lang.Object] */
    public final void a(C7207f80 c7207f80, final Deque deque, final C5362Ix c5362Ix) {
        com.android.tools.r8.graph.F5 f52 = c5362Ix.f41254e;
        c7207f80.getClass();
        if (((com.android.tools.r8.graph.F5) c7207f80.f47879b.remove(f52.getReference())) != null) {
            C4798y c4798y = this.f38698a;
            AbstractC10458yg c10 = c(f52);
            InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
                @Override
                public final void a() {
                    C4870Aj.a(C5362Ix.this, deque);
                }
            };
            AbstractC5361Iw0 d10 = c5362Ix.d();
            AbstractC5361Iw0 a10 = d10.a(c4798y, c10, null, c5362Ix.e(), AbstractC4939Bo0.f39020a, interfaceC6522b2);
            if (a10.a(d10)) {
                return;
            }
            c5362Ix.a(a10);
            interfaceC6522b2.a();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final void b(com.android.tools.r8.graph.H2 h22, C7207f80 c7207f80, final Consumer consumer) {
        if (c7207f80.f47879b.isEmpty()) {
            return;
        }
        final C7207f80 c7207f802 = new C7207f80(new IdentityHashMap());
        C9406sK K12 = h22.K1();
        CK a10 = JK.a(K12.f52337b.iterator(), K12.f52338c);
        while (a10.f43396b.hasNext()) {
            final C10339xw c10339xw = new C10339xw(this.f38698a, ((com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next())).a(this.f38698a, EW.d()));
            c7207f80.a(new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C4870Aj.a(C10339xw.this, c7207f802, consumer, (com.android.tools.r8.graph.F5) obj);
                }
            });
        }
    }

    public final boolean b(com.android.tools.r8.graph.F5 f52) {
        return this.f38698a.a(f52).a(this.f38698a, f52);
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H2 h22, List list) {
        C7207f80 c7207f80 = new C7207f80(new IdentityHashMap());
        C7207f80 c7207f802 = new C7207f80(new IdentityHashMap());
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.F5 f52 = (com.android.tools.r8.graph.F5) it.next();
            if (f52.getAccessFlags().n()) {
                c7207f802.a(f52);
            } else {
                c7207f80.a(f52);
            }
        }
        a(h22, c7207f802, consumer);
        b(h22, c7207f80, consumer);
    }

    public static boolean a(C10339xw c10339xw, C7207f80 c7207f80, Consumer consumer, com.android.tools.r8.graph.F5 f52) {
        if (c10339xw.a(f52) || !c7207f80.a(f52)) {
            return false;
        }
        consumer.accept(f52);
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final void a(com.android.tools.r8.graph.H2 h22, C7207f80 c7207f80, Consumer consumer) {
        if (c7207f80.f47879b.isEmpty()) {
            return;
        }
        if (h22.c1()) {
            final C10339xw c10339xw = new C10339xw(this.f38698a, h22.h(h22.L0()).a(this.f38698a, EW.d()));
            c7207f80.a(new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C10339xw.this.b((com.android.tools.r8.graph.F5) obj);
                }
            });
        }
        c7207f80.forEach(consumer);
    }

    public final Map a(ExecutorService executorService) {
        IdentityHashMap a10 = a();
        if (a10.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        final C7207f80 c7207f80 = new C7207f80(new ConcurrentHashMap());
        final ConcurrentHashMap a11 = a(a10);
        a(a10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4870Aj.a(Map.this, c7207f80, (com.android.tools.r8.graph.F5) obj);
            }
        }, executorService);
        a(a11, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7207f80.this.a((com.android.tools.r8.graph.F5) obj);
            }
        }, executorService);
        return a(c7207f80, executorService);
    }

    public static void a(Map map, C7207f80 c7207f80, com.android.tools.r8.graph.F5 f52) {
        if (!f52.getAccessFlags().e() && !f52.getAccessFlags().n()) {
            ((C7207f80) map.computeIfAbsent(f52.p(), TU.a(new C9848uz0()))).a(f52);
        } else {
            c7207f80.a(f52);
        }
    }

    public final IdentityHashMap a() {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f38698a.f()).d()) {
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4870Aj.this.a(identityHashMap, (com.android.tools.r8.graph.F5) obj);
                }
            };
            h22.getClass();
            h22.f(consumer, EnumC6871d70.f47286b);
        }
        return identityHashMap;
    }

    public final void a(Map map, com.android.tools.r8.graph.F5 f52) {
        AbstractC5361Iw0 a10 = this.f38700c.a(f52);
        if (a10 instanceof C10671zv0) {
            return;
        }
        if (a10.l()) {
            AbstractC10291xg g10 = a10.g();
            if (g10.A().g() && g10.a(this.f38698a).isUnknown()) {
                return;
            }
        }
        ((List) map.computeIfAbsent(f52.getHolder(), TU.a(new com.android.tools.r8.graph.Uc()))).add(f52);
    }

    public final ConcurrentHashMap a(IdentityHashMap identityHashMap) {
        Set set;
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        if (!this.f38702e.e() || ((set = this.f38699b) != null && set.isEmpty())) {
            return concurrentHashMap;
        }
        TU.a(identityHashMap, new InterfaceC6103Vr0() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4870Aj.this.a(concurrentHashMap, (com.android.tools.r8.graph.H2) obj, (List) obj2);
            }
        });
        return concurrentHashMap;
    }

    public final boolean a(final Map map, final com.android.tools.r8.graph.H2 h22, List list) {
        Set set = this.f38699b;
        if (set != null && !set.contains(h22)) {
            return false;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4870Aj.a(Map.this, h22, (com.android.tools.r8.graph.F5) obj);
            }
        });
        return list.isEmpty();
    }

    public static boolean a(Map map, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.F5 f52) {
        if (f52.getAccessFlags().e() || f52.getAccessFlags().n()) {
            return false;
        }
        ((C7207f80) map.computeIfAbsent(h22.getType(), TU.a(new C9848uz0()))).a(f52);
        return true;
    }

    public final void a(IdentityHashMap identityHashMap, final Consumer consumer, ExecutorService executorService) {
        C5467Kr0.a(identityHashMap, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4870Aj.this.a(consumer, (com.android.tools.r8.graph.H2) obj, (List) obj2);
            }
        }, this.f38702e.G(), executorService);
    }

    public final void a(final ConcurrentHashMap concurrentHashMap, final Consumer consumer, ExecutorService executorService) {
        final Set a10 = this.f38698a.f38410c.a();
        TU.a(concurrentHashMap, new InterfaceC6103Vr0() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C4870Aj.this.a(a10, consumer, (com.android.tools.r8.graph.M2) obj, (C7207f80) obj2);
            }
        });
        C5467Kr0.a(this.f38698a, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C4870Aj.this.b(concurrentHashMap, consumer, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f38698a.E().G(), executorService);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.Map, java.lang.Object] */
    public final boolean a(Set set, Consumer consumer, com.android.tools.r8.graph.M2 m22, C7207f80 c7207f80) {
        boolean z10 = f38697f;
        if (!z10 && c7207f80.f47879b.isEmpty()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 holder = ((com.android.tools.r8.graph.F5) c7207f80.f47879b.values().iterator().next()).getHolder();
        if (!this.f38698a.r().a(holder).d(this.f38702e) && !set.contains(holder.getType())) {
            if (this.f38702e.f50697l instanceof ClassFileConsumer) {
                C9406sK K12 = holder.K1();
                if (JK.a(JK.a(K12.f52337b.iterator(), K12.f52338c), new V60() {
                    @Override
                    public final boolean apply(Object obj) {
                        return C4870Aj.this.a((com.android.tools.r8.graph.H5) obj);
                    }
                }) != -1) {
                    c7207f80.forEach(consumer);
                    return true;
                }
            }
            if (!holder.p1()) {
                C11245i c11245i = (C11245i) this.f38698a.f();
                if (!C11245i.f57385J) {
                    c11245i.c();
                }
                if (c11245i.f57405t.a(holder)) {
                    c7207f80.forEach(consumer);
                    return true;
                }
            }
            if (z10 || c7207f80.f47879b.values().stream().allMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C4870Aj.this.b((com.android.tools.r8.graph.F5) obj);
                }
            })) {
                return false;
            }
            throw new AssertionError();
        }
        c7207f80.forEach(consumer);
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return !this.f38698a.a(h52).g(this.f38702e);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.Map, java.lang.Object] */
    public final void b(final Map map, Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        Objects.requireNonNull(map);
        if (a(h52, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Map.this.containsKey((com.android.tools.r8.graph.M2) obj);
            }
        })) {
            C7215fB a10 = h52.a(this.f38698a, EW.d());
            for (C9603tZ c9603tZ : a10.b((Predicate) new C7680hz0())) {
                C7207f80 c7207f80 = (C7207f80) map.get(c9603tZ.u2());
                if (c7207f80 != null) {
                    new C10467yj(this.f38698a, a10, c7207f80, c9603tZ, c7207f80, consumer).b();
                    if (c7207f80.f47879b.isEmpty()) {
                        map.remove(c9603tZ.u2());
                    }
                }
            }
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52, final Predicate predicate) {
        AbstractC4497i0 Q02 = ((C4516j1) h52.d()).Q0();
        if (Q02 == null || Q02.B0()) {
            return false;
        }
        if (Q02.A0()) {
            WS o02 = Q02.o0();
            return X3.a((Object[]) o02.f45405g, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C4870Aj.a(Predicate.this, (YS) obj);
                }
            });
        }
        boolean z10 = f38697f;
        if (!z10) {
            C4798y c4798y = this.f38698a;
            c4798y.getClass();
            if (!c4798y.a((C4516j1) h52.d())) {
                throw new AssertionError();
            }
        }
        if (!z10 && !Q02.t0()) {
            throw new AssertionError();
        }
        C10634zj c10634zj = new C10634zj(this.f38698a, h52, predicate);
        h52.a(c10634zj);
        return c10634zj.f37241e.booleanValue();
    }

    public static boolean a(Predicate predicate, YS ys) {
        return (ys instanceof com.android.tools.r8.graph.M2) && predicate.test((com.android.tools.r8.graph.M2) ys);
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.Map, java.lang.Object] */
    public final IdentityHashMap a(final C7207f80 c7207f80, ExecutorService executorService) {
        final ArrayList a10 = C5467Kr0.a(this.f38701d, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C4870Aj.this.a(c7207f80, (C5246Gx) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4870Aj.a((C8699o50) obj);
            }
        }, this.f38698a.E().G(), executorService);
        for (final com.android.tools.r8.graph.F5 f52 : c7207f80.f47879b.values()) {
            this.f38700c.a(this.f38698a, f52, new Supplier() {
                @Override
                public final Object get() {
                    return C4870Aj.this.c(f52);
                }
            }, C8659ns0.c());
        }
        return TU.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Collection.this.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        IdentityHashMap.this.put((C5246Gx) r2.a(), (Deque) ((C8699o50) obj2).b());
                    }
                });
            }
        });
    }

    public final C8699o50 a(final C7207f80 c7207f80, C5246Gx c5246Gx) {
        final ArrayDeque arrayDeque = new ArrayDeque();
        c5246Gx.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4870Aj.this.a(c7207f80, arrayDeque, (C5362Ix) obj);
            }
        });
        return new C8699o50(c5246Gx, arrayDeque);
    }

    public static void a(C5362Ix c5362Ix, Deque deque) {
        if (c5362Ix.g()) {
            Iterator<E> it = c5362Ix.f41532a.iterator();
            while (it.hasNext()) {
                ((AbstractC5420Jx) it.next()).f41533b.remove(c5362Ix);
            }
            c5362Ix.f41532a.clear();
        }
        c5362Ix.a(deque);
    }

    public static boolean a(C8699o50 c8699o50) {
        return !((Deque) c8699o50.b()).isEmpty();
    }

    public final AbstractC10458yg c(com.android.tools.r8.graph.F5 f52) {
        F1 f12;
        Q00 a10;
        C10664zt c8166kv;
        G1 g12 = this.f38698a.f38427t;
        if (f52.getAccessFlags().n() && f52.d().L0()) {
            f12 = f52.d().K0().a(g12);
        } else if (f52.getReference().getType().P0()) {
            f12 = g12.a();
        } else {
            g12.getClass();
            f12 = C5283Hm0.f40867c;
        }
        if (f52.getReference().getType().E0()) {
            a10 = C7788ig.a(C8854p10.c());
        } else if (f52.getReference().getType().I0()) {
            if (!f38697f) {
                f12.getClass();
                if (!(f12 instanceof C5283Hm0) && !f12.g0() && !(f12 instanceof C5051Dm0)) {
                    throw new AssertionError();
                }
            }
            f12.getClass();
            if (f12 instanceof C5283Hm0) {
                boolean z10 = AbstractC10330xt.f53865a;
                c8166kv = C10664zt.f54561d;
            } else {
                C6949de a11 = AbstractC8999pu0.a((C4798y<?>) this.f38698a, C8854p10.b());
                boolean z11 = AbstractC10330xt.f53865a;
                c8166kv = new C8166kv(a11);
            }
            a10 = C8288lg.a(f12, c8166kv, Collections.EMPTY_SET);
        } else {
            if (!f38697f && !f52.getReference().getType().P0()) {
                throw new AssertionError();
            }
            a10 = C9790ug.a(f12);
        }
        if (!(a10 instanceof C10671zv0)) {
            return a10.c();
        }
        throw new C5417Jv0();
    }
}
