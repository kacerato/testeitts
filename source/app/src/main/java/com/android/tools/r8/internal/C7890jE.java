package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4429e8;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public final class C7890jE {

    public static final boolean f49195c = true;

    public final List f49196a;

    public final Map f49197b;

    public C7890jE(List list, Map map) {
        this.f49196a = list;
        this.f49197b = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(final C4798y c4798y, AA aa2, Map map, final AbstractC10188x1 abstractC10188x1, final C10048wA c10048wA, AbstractC8374m80 abstractC8374m80, com.android.tools.r8.graph.H5 h52) {
        ArrayList arrayList;
        C7057eE c7057eE;
        com.android.tools.r8.graph.F5 c10;
        SD a10;
        C6891dE c6891dE = new C6891dE(c4798y.b(), h52.getReference());
        C7215fB a11 = h52.a((C4798y<?>) c4798y, EW.d());
        AbstractC5308Hz a12 = h52.d().Q0().a(c4798y);
        W5 k10 = a11.k();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) k10);
        loop0: while (true) {
            arrayList = null;
            if (c6286Yx0.b()) {
                Y5 it = ((W5) c6286Yx0.c()).l().iterator();
                while (it.hasNext()) {
                    AbstractC10561zE next = it.next();
                    int r22 = next.r2();
                    if (r22 != 5 && r22 != 9 && r22 != 12 && r22 != 20) {
                        if (r22 == 24) {
                            if (!c6286Yx0.b((C6286Yx0) next.U().v2())) {
                                break loop0;
                            }
                        } else if (r22 != 30) {
                            if (r22 != 33) {
                                if (r22 != 56 && r22 != 15 && r22 != 16) {
                                    break loop0;
                                }
                            } else {
                                QJ c02 = next.c0();
                                if (!c02.C2().i().f53893j) {
                                    break loop0;
                                }
                                com.android.tools.r8.graph.A2 B22 = c02.B2();
                                AbstractC5308Hz v10 = c4798y.v();
                                v10.getClass();
                                com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) v10.a(B22, h52.getReference(), EnumC8071kK.f49580d, a12, AbstractC9530t40.f52519c).f41111a;
                                if (!a22.b(c4798y.b()) || !((C4514j) c4798y.f()).c(aa2.c(), a22.s0())) {
                                    break loop0;
                                }
                                ArrayList arrayList2 = new ArrayList(c02.f54321f.size() - 1);
                                Iterator it2 = AbstractC9907vK.a((List) c02.f54321f).iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        SD a13 = AbstractC6724cE.a(c4798y, (C10340xw0) it2.next());
                                        if (a13 == null) {
                                            break loop0;
                                        } else {
                                            arrayList2.add(a13);
                                        }
                                    } else {
                                        if (c6891dE.f47328e != null) {
                                            break loop0;
                                        }
                                        c6891dE.f47328e = B22;
                                        c6891dE.f47329f = arrayList2;
                                    }
                                }
                            }
                        } else {
                            C9225rE m10 = next.m();
                            if (!m10.n().i().f53893j) {
                                break loop0;
                            }
                            C4554l1 e10 = c4798y.v().e(a12, m10.getField());
                            if (!e10.s0().a(h52.p()) || (c10 = h52.getHolder().c(e10)) == null || (a10 = AbstractC6724cE.a(c4798y, m10.value())) == null) {
                                break loop0;
                            }
                            boolean z10 = AA.f38552f;
                            if (!z10 && !aa2.h()) {
                                throw new AssertionError();
                            }
                            if (!z10) {
                                if (!aa2.g()) {
                                    throw new AssertionError();
                                }
                            } else {
                                aa2.getClass();
                            }
                            if (c10.getHolder() != aa2.f38555d) {
                                if (!z10 && !aa2.g()) {
                                    throw new AssertionError();
                                }
                                c10 = new com.android.tools.r8.graph.F5((C4460g1) aa2.f38556e.get(c10.d()), aa2.f38555d);
                            }
                            C4554l1 reference = c10.getReference();
                            com.android.tools.r8.graph.A2 a23 = c6891dE.f47328e;
                            if (a23 == null) {
                                c6891dE.f47326c.put(reference, a10);
                            } else if (a23 == c6891dE.f47324a.f37859F4.f38228f && (!a10.s() || a10.q().f43848a != 0)) {
                                c6891dE.f47326c.put(reference, a10);
                            } else {
                                c6891dE.f47327d.put(reference, a10);
                            }
                        }
                    }
                }
            } else {
                com.android.tools.r8.graph.A2 a24 = c6891dE.f47328e;
                if (a24 != null) {
                    boolean z11 = C6891dE.f47323g;
                    c7057eE = new C7057eE(c6891dE.f47326c, c6891dE.f47327d, a24, c6891dE.f47329f, c6891dE.f47325b);
                }
            }
        }
        c7057eE = null;
        if (c7057eE != null) {
            C7558hE c7558hE = (C7558hE) map.computeIfAbsent(c7057eE, TU.a(new Supplier() {
                @Override
                public final Object get() {
                    return C7890jE.a(C4798y.this, abstractC10188x1, c10048wA);
                }
            }));
            ArrayList arrayList3 = c7558hE.f48504d;
            int size = arrayList3.size();
            int i10 = 0;
            loop2: while (i10 < size) {
                Object obj = arrayList3.get(i10);
                i10++;
                List list = (List) obj;
                if (!list.isEmpty()) {
                    for (int i11 = 0; i11 < h52.C().size(); i11++) {
                        Set a14 = C7725iE.a(i11, list);
                        if (a14.add(h52.b(i11))) {
                            C4798y c4798y2 = c7558hE.f48501a;
                            com.android.tools.r8.graph.M2 a15 = com.android.tools.r8.graph.P2.a(a14, c4798y2);
                            if (!com.android.tools.r8.graph.P2.a(c4798y2, a15).a(a15)) {
                                break;
                            }
                        }
                    }
                }
                arrayList = list;
                break loop2;
            }
            if (arrayList == null) {
                c7558hE.f48503c = 0;
                arrayList = new ArrayList();
                c7558hE.f48504d.add(arrayList);
            }
            arrayList.add(h52);
            return;
        }
        abstractC8374m80.add((AbstractC8374m80) h52);
    }

    public static C7558hE a(C4798y c4798y, AbstractC10188x1 abstractC10188x1, C10048wA c10048wA) {
        return new C7558hE(c4798y, abstractC10188x1, c10048wA);
    }

    public static void a(AA aa2, AbstractC8374m80 abstractC8374m80, Map map, C7057eE c7057eE, C7558hE c7558hE) {
        for (C7725iE c7725iE : c7558hE.a(aa2, c7057eE)) {
            if (c7725iE.f48890e.size() == 1) {
                abstractC8374m80.addAll(c7725iE.f48890e);
            } else {
                ((List) map.computeIfAbsent(c7057eE, TU.a(new com.android.tools.r8.graph.Uc()))).add(c7725iE);
            }
        }
    }

    public static void a(Map map, final C4798y c4798y, final AbstractC10188x1 abstractC10188x1, final C10048wA c10048wA, com.android.tools.r8.graph.H5 h52) {
        C7558hE c7558hE = (C7558hE) map.computeIfAbsent(h52.d().X0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7890jE.a(C4798y.this, abstractC10188x1, c10048wA, (com.android.tools.r8.graph.I2) obj);
            }
        });
        c7558hE.getClass();
        int q02 = h52.d().Q0().q0();
        int i10 = c7558hE.f48503c + q02;
        int i11 = c7558hE.f48501a.E().f50599F1.f50815E0;
        if (i11 <= -1) {
            i11 = 16383;
        }
        if (i10 > i11 / 2 && c7558hE.f48503c > 0) {
            c7558hE.f48503c = 0;
            c7558hE.f48504d.add(new ArrayList());
        }
        ((List) AT.b(c7558hE.f48504d)).add(h52);
        c7558hE.f48503c += q02;
    }

    public static C7558hE a(C4798y c4798y, AbstractC10188x1 abstractC10188x1, C10048wA c10048wA, com.android.tools.r8.graph.I2 i22) {
        return new C7558hE(c4798y, abstractC10188x1, c10048wA);
    }

    public static void a(AA aa2) {
        aa2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7890jE.a((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.H2 h22) {
        if (f49195c) {
            return;
        }
        C9406sK K12 = h22.K1();
        if (JK.a(K12.f52337b.iterator(), K12.f52338c).f43396b.hasNext()) {
            throw new AssertionError();
        }
    }

    public final void a(Consumer consumer) {
        this.f49196a.forEach(consumer);
        C9073qK.b((Iterable) this.f49197b.values()).forEach(consumer);
    }

    public final void a() {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C7725iE) obj).c();
            }
        });
    }

    public static C7890jE a(C4798y c4798y, final C9115qd0 c9115qd0, final AA aa2, final C10048wA c10048wA) {
        if (!c4798y.f().h()) {
            boolean z10 = f49195c;
            if (!z10 && !c4798y.E().K().e()) {
                throw new AssertionError();
            }
            if (!z10) {
                a(aa2);
            }
            return new C7890jE(Collections.EMPTY_LIST, Collections.EMPTY_MAP);
        }
        final C4798y L10 = c4798y.L();
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        final C10257xS c10257xS = new C10257xS();
        aa2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((com.android.tools.r8.graph.H2) obj).e(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C7890jE.a(C4798y.this, r2, r3, r4, r5, r6, (com.android.tools.r8.graph.H5) obj2);
                    }
                }, new C4429e8());
            }
        });
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7890jE.a(AA.this, c10257xS, linkedHashMap2, (C7057eE) obj, (C7558hE) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        final LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        c10257xS.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7890jE.a(Map.this, L10, c9115qd0, c10048wA, (com.android.tools.r8.graph.H5) obj);
            }
        });
        Iterator it = linkedHashMap3.values().iterator();
        while (it.hasNext()) {
            arrayList.addAll(((C7558hE) it.next()).a(aa2));
        }
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Integer.valueOf(((C7725iE) obj).a());
            }
        }).reversed());
        return new C7890jE(arrayList, linkedHashMap2);
    }
}
