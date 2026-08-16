package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class C10441ya0 {

    public static final boolean f54043d = true;

    public final C4798y f54044a;

    public final C4724u1 f54045b;

    public final C8570nJ f54046c;

    public C10441ya0(C4798y c4798y) {
        this.f54044a = c4798y;
        this.f54045b = c4798y.b();
        this.f54046c = c4798y.E();
    }

    public static void a(HashMap hashMap) {
        final C6286Yx0 c6286Yx0 = new C6286Yx0(1);
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10441ya0.a(C6286Yx0.this, (com.android.tools.r8.graph.F2) obj, (C5058Dq) obj2);
            }
        });
        while (c6286Yx0.b()) {
            Object c10 = c6286Yx0.c();
            c6286Yx0.f46126b.remove(c10);
            com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) c10;
            C5058Dq c5058Dq = (C5058Dq) hashMap.get(f22);
            if (!f54043d && c5058Dq.f39661b.size() <= 1) {
                throw new AssertionError();
            }
            if (!c5058Dq.f39661b.contains(f22)) {
                Comparator comparator = new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return ((com.android.tools.r8.graph.F2) obj).compareTo((com.android.tools.r8.graph.F2) obj2);
                    }
                };
                Iterator it = c5058Dq.iterator();
                Object obj = null;
                while (it.hasNext()) {
                    Object next = it.next();
                    if (obj == null || comparator.compare(next, obj) < 0) {
                        obj = next;
                    }
                }
                f22 = (com.android.tools.r8.graph.F2) obj;
            }
            for (com.android.tools.r8.graph.F2 f23 : c5058Dq.f39661b) {
                if (!f23.equals(f22)) {
                    C5058Dq c5058Dq2 = (C5058Dq) hashMap.computeIfAbsent(f23, TU.a(new X11()));
                    c5058Dq2.f39661b.add(f23);
                    if (c5058Dq2.f39661b.size() > 1) {
                        c6286Yx0.b((C6286Yx0) f23);
                    }
                }
            }
            c5058Dq.f39661b.clear();
            c5058Dq.f39661b.add(f22);
        }
    }

    public static com.android.tools.r8.graph.F2 b(com.android.tools.r8.graph.F2 f22, C5058Dq c5058Dq) {
        return f22;
    }

    public final Map b(com.android.tools.r8.graph.H2 h22, C10274xa0 c10274xa0, C10107wa0 c10107wa0) {
        HashMap a10 = a(h22, c10274xa0, c10107wa0);
        a(a10);
        return TU.a(a10, new Yr1(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10441ya0.a((com.android.tools.r8.graph.F2) obj, (C5058Dq) obj2);
            }
        }, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10441ya0.b((com.android.tools.r8.graph.F2) obj, (C5058Dq) obj2);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C10441ya0.a((com.android.tools.r8.graph.F2) obj, (com.android.tools.r8.graph.F2) obj2, (com.android.tools.r8.graph.F2) obj3);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F2 f22, Map map, C5058Dq c5058Dq, com.android.tools.r8.graph.F2 f23) {
        a(f23, f22.b().n0(), map, c5058Dq);
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Proto normalization");
        C10107wa0 a10 = a(executorService);
        C4798y c4798y = this.f54044a;
        boolean z10 = C4847Aa0.f38632h;
        C10608za0 c10608za0 = new C10608za0(c4798y);
        new C9940va0(this, a10, c10608za0).b(((C11245i) this.f54044a.f()).e());
        if (!c10608za0.f54403b.f51964b.isEmpty()) {
            C4847Aa0 c4847Aa0 = new C4847Aa0(c10608za0.f54402a, c10608za0.f54403b, c10608za0.f54404c);
            a(executorService, c4847Aa0);
            C4798y c4798y2 = this.f54044a;
            c4798y2.a(c4847Aa0, c4798y2.e().a(), executorService, c8659ns0);
            ZS.b(this.f54044a, c8659ns0, executorService);
        }
        c8659ns0.d();
    }

    public final void a(final Map map, final C5058Dq c5058Dq, final com.android.tools.r8.graph.F2 f22, C5058Dq c5058Dq2) {
        if (c5058Dq2.f39661b.size() > 1) {
            c5058Dq2.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10441ya0.this.a(f22, map, c5058Dq, (com.android.tools.r8.graph.F2) obj);
                }
            });
        }
    }

    public static void a(C6286Yx0 c6286Yx0, com.android.tools.r8.graph.F2 f22, C5058Dq c5058Dq) {
        if (c5058Dq.f39661b.size() > 1) {
            c6286Yx0.b((C6286Yx0) f22);
        }
    }

    public final void a(ExecutorService executorService, final C4847Aa0 c4847Aa0) {
        com.android.tools.r8.J.a(this.f54044a, ((C11245i) this.f54044a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10441ya0.a(C4847Aa0.this, (com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public static void a(C4847Aa0 c4847Aa0, com.android.tools.r8.graph.H2 h22) {
        if (!h22.d1() || h22.O0().f37290b == null) {
            return;
        }
        com.android.tools.r8.graph.A2 a10 = h22.O0().a();
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ((C9201r6) c4847Aa0.f38633f).getOrDefault(a10, a10);
        if (a22.a(a10)) {
            return;
        }
        h22.f36253m = new C4500i3(a22);
    }

    public final C10107wa0 a(ExecutorService executorService) {
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        final ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        final C5058Dq c5058Dq = new C5058Dq(C4875Al0.a());
        C5467Kr0.a(((C11245i) this.f54044a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10441ya0.this.a(concurrentHashMap, concurrentHashMap2, c5058Dq, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f54044a.E().G(), executorService);
        final HashSet hashSet = new HashSet();
        concurrentHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10441ya0.a(Map.this, hashSet, (com.android.tools.r8.graph.O2) obj, (Set) obj2);
            }
        });
        C5467Kr0.a(this.f54044a, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10441ya0.this.a(hashSet, c5058Dq, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f54044a.E().G(), executorService);
        return new C10107wa0(concurrentHashMap2, c5058Dq);
    }

    public final void a(final Map map, final Map map2, final C5058Dq c5058Dq, com.android.tools.r8.graph.H2 h22) {
        final HashMap hashMap = new HashMap();
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10441ya0.this.a(map, map2, c5058Dq, hashMap, (com.android.tools.r8.graph.H5) obj);
            }
        });
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10441ya0.this.a(map2, c5058Dq, (com.android.tools.r8.graph.F2) obj, (C5058Dq) obj2);
            }
        });
    }

    public final void a(Map map, Map map2, C5058Dq c5058Dq, Map map3, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.O2 C10 = h52.C();
        com.android.tools.r8.graph.M2[] m2Arr = C10.f36675b;
        if (m2Arr.length > 1) {
            com.android.tools.r8.graph.M2[] m2Arr2 = (com.android.tools.r8.graph.M2[]) m2Arr.clone();
            Arrays.sort(m2Arr2);
            C10 = new com.android.tools.r8.graph.O2(m2Arr2);
        }
        a(h52, C10, map, map2, c5058Dq);
        com.android.tools.r8.graph.D2 x10 = h52.x();
        C4724u1 c4724u1 = this.f54045b;
        ((C5058Dq) map3.computeIfAbsent(new com.android.tools.r8.graph.E2(c4724u1.a(x10.b().o0(), C10), x10.a()), TU.a(new Supplier() {
            @Override
            public final Object get() {
                return C5058Dq.b();
            }
        }))).f39661b.add(x10);
    }

    public static void a(Map map, Set set, com.android.tools.r8.graph.O2 o22, Set set2) {
        int size = set2.size();
        if (size != 1) {
            if (!f54043d && size <= 1) {
                throw new AssertionError();
            }
        } else {
            com.android.tools.r8.graph.O2 o23 = (com.android.tools.r8.graph.O2) set2.iterator().next();
            Set set3 = (Set) map.getOrDefault(o22, Collections.EMPTY_SET);
            if (set3.isEmpty() || set3.contains(o23)) {
                set.add(o23);
            }
        }
    }

    public static void a(com.android.tools.r8.graph.F2 f22, com.android.tools.r8.graph.O2 o22, Map map, C5058Dq c5058Dq) {
        ((Set) map.computeIfAbsent(o22, TU.a(new C7738iJ0()))).add(f22.b().n0());
        c5058Dq.f39661b.add(f22);
    }

    public final void a(Set set, C5058Dq c5058Dq, com.android.tools.r8.graph.H5 h52) {
        if (set.contains(h52.C())) {
            c5058Dq.f39661b.add(h52.x());
        }
    }

    public static com.android.tools.r8.graph.F2 a(com.android.tools.r8.graph.F2 f22, com.android.tools.r8.graph.F2 f23, com.android.tools.r8.graph.F2 f24) {
        throw new C5417Jv0();
    }

    public final HashMap a(com.android.tools.r8.graph.H2 h22, final C10274xa0 c10274xa0, final C10107wa0 c10107wa0) {
        final HashMap hashMap = new HashMap();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10441ya0.this.a(c10274xa0, c10107wa0, hashMap, (com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.g(consumer, EnumC6871d70.f47286b);
        return hashMap;
    }

    public final void a(C10274xa0 c10274xa0, C10107wa0 c10107wa0, Map map, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.D2 x10 = h52.x();
        ((C5058Dq) map.computeIfAbsent(c10274xa0.a(x10, this.f54045b, c10107wa0, false), TU.a(new X11()))).f39661b.add(x10);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.O2 o22, Map map, Map map2, C5058Dq c5058Dq) {
        com.android.tools.r8.shaking.I1 a10 = this.f54044a.a(h52);
        C8570nJ c8570nJ = this.f54046c;
        if (a10.g(c8570nJ) && a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f56561t && !h52.d().k1().c()) {
            C11245i c11245i = (C11245i) this.f54044a.f();
            c11245i.getClass();
            if (!c11245i.f57401p.contains(h52.getReference()) && (!h52.getHolder().isInterface() || !h52.d().d1() || !c11245i.f57405t.b(h52.getHolder()))) {
                ((Set) map.computeIfAbsent(o22, TU.a(new C7738iJ0()))).add(h52.C());
                return;
            }
        }
        a(h52.x(), o22, map2, c5058Dq);
    }

    public static com.android.tools.r8.graph.F2 a(com.android.tools.r8.graph.F2 f22, C5058Dq c5058Dq) {
        Iterator<E> it = c5058Dq.iterator();
        return (com.android.tools.r8.graph.F2) (it.hasNext() ? it.next() : null);
    }
}
