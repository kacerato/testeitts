package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class R7 {

    public static final boolean f43806b = true;

    public final C4798y f43807a;

    public R7(C4798y c4798y) {
        this.f43807a = c4798y;
    }

    public static void a(final C4798y c4798y, final C8659ns0 c8659ns0, final ExecutorService executorService) {
        C8570nJ E10 = c4798y.E();
        if (E10.T() && E10.W() && c4798y.E().e() && E10.F().f50852X) {
            c8659ns0.a("BridgeHoistingToSharedSyntheticSuperClass", new InterfaceC5930Sr0() {
                @Override
                public final void a() {
                    R7.a(C4798y.this, executorService, c8659ns0);
                }
            });
        }
    }

    public final void b(ArrayList arrayList) {
        final C9957vg a10 = M70.b(this.f43807a).a();
        if (a10 == null) {
            return;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            Q7 q72 = (Q7) obj;
            ArrayList arrayList2 = q72.f43453b;
            int size2 = arrayList2.size();
            int i11 = 0;
            while (i11 < size2) {
                Object obj2 = arrayList2.get(i11);
                i11++;
                final com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj2;
                a10.a(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        ((K70) obj3).a(com.android.tools.r8.graph.H2.this.a1());
                    }
                }, h22);
                q72.f43454c.f43129a.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj3, Object obj4) {
                        R7.this.a(h22, a10, (com.android.tools.r8.graph.F2) obj3, (com.android.tools.r8.graph.F2) obj4);
                    }
                });
            }
        }
        a10.a(this.f43807a);
    }

    public static void a(C4798y c4798y, ExecutorService executorService, C8659ns0 c8659ns0) {
        R7 r72 = new R7(c4798y);
        Collection a10 = a(c4798y);
        ArrayList arrayList = new ArrayList();
        Iterator it = a10.iterator();
        while (it.hasNext()) {
            AbstractC9907vK.a(r72.a((Q7) it.next()), arrayList);
        }
        if (!arrayList.isEmpty()) {
            r72.a(arrayList);
            if (!f43806b && !r72.f43807a.f38408a.g().b()) {
                throw new AssertionError();
            }
            C4798y c4798y2 = r72.f43807a;
            c4798y2.b(c4798y2.e());
            r72.b(arrayList);
            new M7(r72.f43807a).a(executorService, c8659ns0);
        }
        r72.f43807a.b().b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Collection a(C4798y c4798y) {
        com.android.tools.r8.graph.E0 g10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) c4798y.f()).e()) {
            if (h22.i1() && (g10 = c4798y.g(h22.a1())) != null) {
                ((Q7) linkedHashMap.computeIfAbsent(g10, TU.a(new Supplier() {
                    @Override
                    public final Object get() {
                        return new Q7();
                    }
                }))).f43453b.add(h22);
            }
        }
        linkedHashMap.values().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Q7) obj).a();
            }
        });
        return linkedHashMap.values();
    }

    public final void a(com.android.tools.r8.graph.H2 h22, Set set, Q7 q72, final com.android.tools.r8.synthesis.W w10) {
        w10.f58286e = true;
        w10.f58287f = false;
        com.android.tools.r8.synthesis.W w11 = (com.android.tools.r8.synthesis.W) w10.c();
        w11.f58290i = h22.a1();
        Comparator naturalOrder = Comparator.naturalOrder();
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(naturalOrder);
        w11.a((List) arrayList);
        P7 p72 = q72.f43454c;
        p72.f43129a.f39368b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                R7.this.a(w10, (com.android.tools.r8.graph.F2) obj, (com.android.tools.r8.graph.F2) obj2);
            }
        });
    }

    public final C9239rK a(final Q7 q72) {
        Q7 q73;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = q72.f43453b;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            P7 a10 = a(h22);
            if (!a10.f43129a.f39368b.isEmpty()) {
                int size2 = arrayList.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size2) {
                        q73 = null;
                        break;
                    }
                    Object obj2 = arrayList.get(i11);
                    i11++;
                    q73 = (Q7) obj2;
                    if (a10.a(q73.f43454c)) {
                        q73.f43453b.add(h22);
                        break;
                    }
                    if (q73.f43454c.a(a10)) {
                        q73.f43453b.add(h22);
                        q73.f43454c = a10;
                        break;
                    }
                }
                if (q73 == null) {
                    arrayList.add(new Q7(h22, a10));
                }
            }
        }
        return new C9239rK(arrayList, new V60() {
            @Override
            public final boolean apply(Object obj3) {
                return R7.a(Q7.this, (Q7) obj3);
            }
        });
    }

    public static boolean a(Q7 q72, Q7 q73) {
        return !q73.a() && q73.f43453b.size() < q72.f43453b.size();
    }

    public final P7 a(com.android.tools.r8.graph.H2 h22) {
        final P7 p72 = new P7();
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                R7.this.a(p72, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
        return p72;
    }

    public final void a(P7 p72, com.android.tools.r8.graph.H5 h52) {
        S7 a10 = L7.a(h52.d(), h52.a(this.f43807a, EW.d()));
        if (a10 != null) {
            AbstractC8028k40.a().getClass();
            h52.d().T0().f45457l = a10;
            if (a10 instanceof C8841ox0) {
                com.android.tools.r8.graph.D2 x10 = h52.x();
                C8841ox0 a11 = a10.a();
                C5000Cq c5000Cq = p72.f43129a;
                com.android.tools.r8.graph.A2 a22 = a11.f51394a;
                c5000Cq.f39368b.put(x10, AbstractC9280rd.a(a22, a22));
            }
        }
    }

    public final void a(ArrayList arrayList) {
        C5093Ef k10 = this.f43807a.k();
        C4977Cf c4977Cf = new C4977Cf(k10, k10.f39965a.f40823b);
        if (!C5093Ef.f39964c) {
            k10.a(c4977Cf);
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            final Q7 q72 = (Q7) obj;
            final com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) AT.a(q72.f43453b);
            final Set a10 = C4875Al0.a(h22.R0());
            Iterator it = AbstractC9907vK.a((List) q72.f43453b).iterator();
            while (it.hasNext()) {
                final com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it.next();
                a10.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return R7.a(com.android.tools.r8.graph.H2.this, (com.android.tools.r8.graph.M2) obj2);
                    }
                });
            }
            com.android.tools.r8.graph.H2 a11 = this.f43807a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58194u;
                    return bVar;
                }
            }, c4977Cf.a(h22), this.f43807a, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    R7.this.a(h22, a10, q72, (com.android.tools.r8.synthesis.W) obj2);
                }
            });
            ArrayList arrayList2 = q72.f43453b;
            int size2 = arrayList2.size();
            int i11 = 0;
            while (i11 < size2) {
                Object obj2 = arrayList2.get(i11);
                i11++;
                ((com.android.tools.r8.graph.H2) obj2).f36247g = a11.getType();
            }
        }
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        return !h22.R0().a(m22);
    }

    public final void a(com.android.tools.r8.synthesis.W w10, com.android.tools.r8.graph.F2 f22, final com.android.tools.r8.graph.F2 f23) {
        w10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                R7.this.a(f23, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F2 f22, com.android.tools.r8.synthesis.N n10) {
        boolean z10 = com.android.tools.r8.graph.L4.f36564f;
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        ((com.android.tools.r8.graph.L4) k42.f37168a).a(1024);
        n10.f58119i = (com.android.tools.r8.graph.L4) ((com.android.tools.r8.graph.K4) k42.a(true)).f37168a;
        n10.f58123m = this.f43807a.f38405T;
        n10.f58126p = AbstractC9530t40.f52518b;
        n10.a(f22.a()).f58115e = f22.b();
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, C9957vg c9957vg, com.android.tools.r8.graph.F2 f22, final com.android.tools.r8.graph.F2 f23) {
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        b02.getClass();
        C4516j1 a10 = b02.f36638b.a(f23.b(), f23.a());
        if (a10 != null) {
            c9957vg.a(a10.getReference(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    R7.this.a(f23, h22, (K70) obj);
                }
            });
        }
    }

    public final void a(com.android.tools.r8.graph.F2 f22, com.android.tools.r8.graph.H2 h22, K70 k70) {
        com.android.tools.r8.graph.M2 a12 = h22.a1();
        C4724u1 b10 = this.f43807a.b();
        f22.getClass();
        a12.getClass();
        k70.a(b10.a(a12, f22.b(), f22.a()));
    }
}
