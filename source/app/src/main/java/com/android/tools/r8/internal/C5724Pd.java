package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.position.MethodPosition;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C5724Pd {

    public static final boolean f43284m = true;

    public final C4798y f43285a;

    public final C4724u1 f43286b;

    public final C10404yI f43287c;

    public final boolean f43289e;

    public final Predicate f43290f;

    public final int f43296l;

    public final C9933vX f43288d = C9933vX.f53136a;

    public final ConcurrentHashMap f43291g = new ConcurrentHashMap();

    public final ConcurrentHashMap f43292h = new ConcurrentHashMap();

    public final ConcurrentHashMap f43293i = new ConcurrentHashMap();

    public final ConcurrentHashMap f43294j = new ConcurrentHashMap();

    public final ConcurrentHashMap f43295k = new ConcurrentHashMap();

    public C5724Pd(C4798y c4798y, Predicate predicate, int i10) {
        this.f43285a = c4798y;
        this.f43286b = c4798y.b();
        this.f43287c = new C10404yI(c4798y);
        if (!f43284m && i10 == 3) {
            throw new AssertionError();
        }
        this.f43289e = !c4798y.E().x().a().isEmpty();
        this.f43290f = predicate;
        this.f43296l = i10;
    }

    public static boolean b(com.android.tools.r8.graph.A2 a22) {
        return true;
    }

    public final void a(final FI fi2, com.android.tools.r8.graph.H2 h22) {
        if (h22.isInterface()) {
            return;
        }
        b(new C5435Kd(h22, h22, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5724Pd.this.a(fi2, (com.android.tools.r8.graph.H2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        }), fi2, h22);
    }

    public final C5493Ld b(com.android.tools.r8.graph.E0 e02, C5493Ld c5493Ld) {
        boolean z10 = f43284m;
        if (!z10 && !e02.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && e02.f36247g != this.f43286b.f38068i2) {
            throw new AssertionError();
        }
        if (!z10 && this.f43287c.c(e02.f36245e)) {
            throw new AssertionError();
        }
        if (this.f43296l == 2) {
            return C5493Ld.f42022c;
        }
        if (e02.f0() && (!this.f43289e || !this.f43287c.a(e02))) {
            return c5493Ld;
        }
        C5377Jd a10 = a(e02, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5724Pd.b((com.android.tools.r8.graph.A2) obj);
            }
        });
        c5493Ld.getClass();
        return a10.f41435a.isEmpty() ? c5493Ld : new C5493Ld(c5493Ld.f42023a.a(a10), c5493Ld.f42024b);
    }

    public final void a(FI fi2, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        fi2.a(h22, m22, this.f43287c);
    }

    public final void a(final AbstractC5947Ta abstractC5947Ta, ExecutorService executorService) {
        C5467Kr0.a(this.f43294j, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5724Pd.a(FI.this, (com.android.tools.r8.graph.H2) obj, (Map) obj2);
            }
        }, this.f43285a.E().G(), executorService);
        this.f43295k.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5724Pd.this.a(abstractC5947Ta, (com.android.tools.r8.graph.H2) obj, (List) obj2);
            }
        });
    }

    public static void a(FI fi2, com.android.tools.r8.graph.H2 h22, Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            arrayList.add(((AbstractC5608Nd) it.next()).f42642a.d());
        }
        arrayList.sort(Comparator.comparing(new com.android.tools.r8.graph.I9()));
        h22.a(arrayList);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            AbstractC5608Nd abstractC5608Nd = (AbstractC5608Nd) map.get(((C4516j1) obj).getReference());
            abstractC5608Nd.getClass();
            if (abstractC5608Nd instanceof C5550Md) {
                fi2.a(abstractC5608Nd.f42642a, abstractC5608Nd.a().f42331b);
            } else {
                C5666Od b10 = abstractC5608Nd.b();
                fi2.a(abstractC5608Nd.f42642a, b10.f42936b, b10.f42937c);
            }
        }
    }

    public final void b(Set set, Map map, com.android.tools.r8.graph.M2 m22) {
        if (set.contains(m22)) {
            map.put(m22, new H3.c(this.f43287c.b(m22)));
        }
        a((List) null, map, m22, set);
    }

    public static Map b(com.android.tools.r8.graph.H2 h22) {
        return new ConcurrentHashMap();
    }

    public final C5145Fd b(final C5435Kd c5435Kd, final FI fi2, com.android.tools.r8.graph.E0 e02) {
        if (!f43284m && e02.isInterface()) {
            throw new AssertionError();
        }
        if (e02.f0()) {
            return C5145Fd.f40259d;
        }
        return (C5145Fd) a(this.f43291g, e02, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5724Pd.this.a(c5435Kd, fi2, (com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final C5493Ld b(final C5435Kd c5435Kd, com.android.tools.r8.graph.E0 e02) {
        if (e02.f0() && !this.f43289e) {
            return C5493Ld.f42022c;
        }
        return (C5493Ld) a(this.f43293i, e02, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5724Pd.this.a(c5435Kd, (com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final void a(FI fi2, com.android.tools.r8.graph.H2 h22, List list) {
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fi2.a(h22, this.f43287c.a(((H3.c) it.next()).q()));
        }
        h22.a(list, this.f43285a.b());
    }

    public final C5493Ld a(com.android.tools.r8.graph.E0 e02, C5493Ld c5493Ld) {
        boolean z10 = f43284m;
        if (!z10 && !e02.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && e02.f36247g != this.f43286b.f38068i2) {
            throw new AssertionError();
        }
        if (!z10 && !this.f43287c.c(e02.f36245e)) {
            throw new AssertionError();
        }
        if (!z10 && !this.f43289e) {
            throw new AssertionError();
        }
        C5203Gd c5203Gd = new C5203Gd(a(e02, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5724Pd.this.a((com.android.tools.r8.graph.A2) obj);
            }
        }), new C5261Hd(e02.f36245e));
        c5493Ld.getClass();
        return c5203Gd.a() ? c5493Ld : new C5493Ld(c5493Ld.f42023a, c5493Ld.f42024b.a(c5203Gd));
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return this.f43285a.E().x().a().a(a22) != null;
    }

    public final C5377Jd a(com.android.tools.r8.graph.E0 e02, Predicate predicate) {
        if (!f43284m && !e02.isInterface()) {
            throw new AssertionError();
        }
        HashSet hashSet = new HashSet(e02.b0().e());
        for (C4516j1 c4516j1 : e02.i(new com.android.tools.r8.graph.F7())) {
            if (predicate.test(c4516j1.getReference())) {
                C9933vX c9933vX = this.f43288d;
                com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
                c9933vX.getClass();
                hashSet.add(new C7333fv(c9933vX, reference));
            }
        }
        return hashSet.isEmpty() ? C5377Jd.f41434b : new C5377Jd(hashSet);
    }

    public final void a(final com.android.tools.r8.graph.E0 e02, C5261Hd c5261Hd) {
        if (e02.v1()) {
            return;
        }
        HashSet hashSet = new HashSet(c5261Hd.f40802a);
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        Iterator it = c5261Hd.f40802a.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 g10 = this.f43285a.g((com.android.tools.r8.graph.M2) it.next());
            if (g10 != null) {
                if (!f43284m && !g10.f0() && !X2.a(this.f43285a).f53764a) {
                    throw new AssertionError();
                }
                c6286Yx0.b((Iterable) g10.R0());
            }
        }
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) c6286Yx0.c();
            hashSet.remove(m22);
            com.android.tools.r8.graph.E0 g11 = this.f43285a.g(m22);
            if (g11 != null) {
                c6286Yx0.b((Iterable) g11.R0());
            }
        }
        Iterator it2 = c5261Hd.f40802a.iterator();
        while (it2.hasNext()) {
            com.android.tools.r8.graph.E0 g12 = this.f43285a.g((com.android.tools.r8.graph.M2) it2.next());
            if (g12 != null) {
                g12 = this.f43285a.g(g12.f36247g);
            }
            while (g12 != null && g12.getType() != this.f43285a.b().f38068i2) {
                hashSet.remove(g12.getType());
                g12 = this.f43285a.g(g12.a1());
            }
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        a(e02, hashSet, identityHashMap);
        ArrayList arrayList = new ArrayList(hashSet);
        Collections.sort(arrayList);
        final ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            H3.c cVar = (H3.c) identityHashMap.get((com.android.tools.r8.graph.M2) obj);
            if (!f43284m && cVar == null) {
                throw new AssertionError();
            }
            arrayList2.add(cVar);
        }
        e02.R0().forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C5724Pd.this.a(arrayList2, e02, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        this.f43295k.put(e02.d0(), arrayList2);
    }

    public final void a(List list, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((H3.c) list.get(i10)).q() == m22) {
                if (this.f43285a.E().l().f50754b) {
                    list.remove(i10);
                    return;
                }
                throw new C5325If("Code has already been library desugared. Interface " + ((Object) m22.v0()) + " is already implemented by " + ((Object) e02.getType().v0()));
            }
        }
    }

    public final void a(com.android.tools.r8.graph.E0 e02, final HashSet hashSet, final IdentityHashMap identityHashMap) {
        if (this.f43285a.E().M() && e02.B1()) {
            e02.a(this.f43285a.b(), new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C5724Pd.this.a(hashSet, identityHashMap, (com.android.tools.r8.graph.M2) obj, (H3.c) obj2);
                }
            });
        } else {
            e02.e(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5724Pd.this.a(hashSet, identityHashMap, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
    }

    public final void a(Set set, Map map, com.android.tools.r8.graph.M2 m22, H3.c cVar) {
        if (set.contains(m22)) {
            map.put(m22, new H3.c(this.f43287c.b(m22), cVar.r(), null, H3.k.f36403b));
        }
        a(cVar.r(), map, m22, set);
    }

    public final void a(Set set, Map map, com.android.tools.r8.graph.M2 m22) {
        if (set.contains(m22)) {
            map.put(m22, new H3.c(this.f43287c.b(m22)));
        }
        a((List) null, map, m22, set);
    }

    public final void a(List list, final Map map, com.android.tools.r8.graph.M2 m22, final Set set) {
        com.android.tools.r8.graph.E0 g10 = this.f43285a.g(m22);
        if (g10 == null) {
            return;
        }
        if (this.f43285a.E().M() && g10.B1()) {
            if (!f43284m && list == null) {
                throw new AssertionError();
            }
            g10.b(list, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C5724Pd.this.a(set, map, (com.android.tools.r8.graph.M2) obj, (List) obj2);
                }
            });
            return;
        }
        if (!f43284m && list != null) {
            throw new AssertionError();
        }
        g10.e(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5724Pd.this.b(set, map, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(Set set, Map map, com.android.tools.r8.graph.M2 m22, List list) {
        if (set.contains(m22)) {
            map.put(m22, new H3.c(this.f43287c.b(m22), list, null, H3.k.f36403b));
        }
        a(list, map, m22, set);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, C5145Fd c5145Fd, C7051eC c7051eC, com.android.tools.r8.graph.A2 a22) {
        C6257Yj c6257Yj;
        com.android.tools.r8.graph.A2 a10;
        C4514j g10 = this.f43285a.g();
        com.android.tools.r8.graph.Z4 h10 = g10.h(e02, a22);
        if (h10.h() || ((Z4.c) h10.g()).f37022d.w0()) {
            final U6 u62 = new U6(true);
            if (h10.h()) {
                h10.k().a(C6628bi.b(), new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        U6.this.a(((C4516j1) obj).w0());
                    }
                });
            } else if (h10.j()) {
                u62.c(((Z4.c) h10.g()).f37022d.w0());
            }
            if (u62.f44672b && u62.d()) {
                h10 = g10.c(a22.f38297f, a22);
            }
            if (h10.h()) {
                if (h10.u()) {
                    a(a22, e02, this.f43286b.f37827B3, h10.k());
                    return;
                }
                if (h10.b(e02, this.f43285a, g10)) {
                    a(a22, e02, this.f43286b.f37843D3, h10.k());
                    return;
                } else {
                    if (!f43284m && !h10.a(e02, this.f43285a, g10)) {
                        throw new AssertionError();
                    }
                    a(a22, e02, this.f43286b.f38197y3, h10.k());
                    return;
                }
            }
        }
        boolean z10 = f43284m;
        if (!z10 && !h10.j()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.D4 a11 = h10.a(e02, g10);
        if (a11 == null) {
            if (z10) {
                this.f43285a.E().f50691j.c("The class processor was not able to look-up the default method " + ((Object) a22) + " in the class " + ((Object) e02) + " (Single resolution: " + h10.w() + "; resolution pair: " + ((Object) h10.p()) + "). Please report this issue in the D8/R8 bug tracker at https://issuetracker.google.com/issues/237507594.");
                a(a22, e02, this.f43286b.f37843D3, Z4.b.f37018c);
                return;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H0 l10 = a11.l();
        if (!z10 && l10 == null) {
            throw new AssertionError();
        }
        l10.getClass();
        boolean z11 = l10 instanceof com.android.tools.r8.graph.H5;
        if (!(z11 ? this.f43290f.test(l10.H()) : true) || c5145Fd.a(l10)) {
            return;
        }
        if (l10.F()) {
            a10 = this.f43287c.a(l10, BI.f38875c).getReference();
        } else {
            C10404yI c10404yI = this.f43287c;
            com.android.tools.r8.graph.E0 holder = l10.getHolder();
            com.android.tools.r8.graph.A2 a23 = X2.a(c10404yI.f53990a).f53766c.i().get(l10.getReference());
            if (a23 != null) {
                c6257Yj = new C6257Yj(a23);
            } else {
                C6830cu a12 = c10404yI.a(holder, l10);
                c6257Yj = a12 == null ? null : a12.f47199c;
            }
            a10 = c6257Yj != null ? this.f43287c.a(c6257Yj, BI.f38875c) : null;
        }
        if (a10 != null) {
            c7051eC.a(l10);
            if (e02.e0()) {
                C4516j1 b10 = e02.b(l10.getReference());
                if (b10 == null) {
                    C4516j1 a13 = C4516j1.a(l10, e02, a10, this.f43286b, true);
                    if (!z11 || l10.d().k1().d()) {
                        a13.a(AbstractC9530t40.f52517a);
                    }
                    a(a13.a(e02.d0()), l10);
                    return;
                }
                throw new C5325If("Attempt to add forwarding method that conflicts with existing method.", null, e02.f36244d, new MethodPosition(b10.getReference().v0()));
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        AbstractC5608Nd abstractC5608Nd = (AbstractC5608Nd) ((Map) this.f43294j.computeIfAbsent(h52.getHolder(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5724Pd.a((com.android.tools.r8.graph.H2) obj);
            }
        })).put(h52.getReference(), new C5550Md(h52, h02));
        if (!f43284m && abstractC5608Nd != null) {
            throw new AssertionError();
        }
    }

    public static Map a(com.android.tools.r8.graph.H2 h22) {
        return new ConcurrentHashMap();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.M2 m22, Z4.a aVar) {
        AbstractC5608Nd abstractC5608Nd = (AbstractC5608Nd) ((Map) this.f43294j.computeIfAbsent(h52.getHolder(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5724Pd.b((com.android.tools.r8.graph.H2) obj);
            }
        })).put(h52.getReference(), new C5666Od(h52, m22, aVar));
        if (!f43284m && abstractC5608Nd != null) {
            throw new AssertionError();
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22, Z4.a aVar) {
        if (e02.e0()) {
            boolean z10 = com.android.tools.r8.graph.L4.f36564f;
            com.android.tools.r8.graph.L4 l42 = (com.android.tools.r8.graph.L4) ((com.android.tools.r8.graph.K4) new com.android.tools.r8.graph.K4().a(true)).f37168a;
            com.android.tools.r8.graph.A2 a10 = a22.a(e02.getType(), this.f43286b);
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            C4516j1.a a11 = new C4516j1.a(true).a(a10).a(l42);
            C4724u1 c4724u1 = this.f43286b;
            com.android.tools.r8.graph.A2 a12 = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, new com.android.tools.r8.graph.M2[0]), c4724u1.f38067i1);
            int a13 = C8704o7.a(!l42.n()) + a10.x0().size();
            com.android.tools.r8.graph.M2 s02 = a10.s0();
            AbstractC7552hC a14 = AbstractC7552hC.a(new C10106wa(m22), new C8106kb(C8106kb.a.Dup), new C7437ga(183, a12, false), new C4965Cb());
            List list = Collections.EMPTY_LIST;
            a(a11.a(new com.android.tools.r8.graph.G(s02, 2, a13, a14, list, list)).b().a().a(e02.d0()), m22, aVar);
        }
    }

    public static Object a(ConcurrentHashMap concurrentHashMap, com.android.tools.r8.graph.E0 e02, Function function) {
        Object obj = concurrentHashMap.get(e02);
        if (obj != null) {
            return obj;
        }
        synchronized (e02) {
            try {
                Object obj2 = concurrentHashMap.get(e02);
                if (obj2 != null) {
                    return obj2;
                }
                Object apply = function.apply(e02);
                concurrentHashMap.put(e02, apply);
                return apply;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0119 A[LOOP:4: B:110:0x0113->B:112:0x0119, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.android.tools.r8.graph.E0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5145Fd a(C5435Kd c5435Kd, FI fi2, com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.E0 e03;
        C5145Fd b10;
        com.android.tools.r8.graph.E0 e04;
        C5493Ld a10;
        C5203Gd c5203Gd;
        Iterator it;
        AbstractC7552hC a11;
        C5203Gd c5203Gd2;
        com.android.tools.r8.graph.E0 e05;
        C5493Ld b11;
        C5435Kd a12 = c5435Kd.a(e02);
        com.android.tools.r8.graph.M2 m22 = e02.f36247g;
        if (m22 != null && m22 != this.f43286b.f38068i2) {
            e03 = a12.a(this.f43285a, m22);
            if (e03 == null) {
                a12.a(m22);
            }
            b10 = e03 != null ? C5145Fd.f40259d : b(a12, fi2, e03);
            com.android.tools.r8.graph.M2 m23 = e02.f36247g;
            if (this.f43289e) {
                a10 = C5493Ld.f42022c;
            } else {
                if (m23 == null || m23 == this.f43286b.f38068i2 || (e04 = this.f43285a.g(m23)) == null) {
                    e04 = null;
                }
                a10 = e04 == null ? C5493Ld.f42022c : a(e04);
            }
            if (!f43284m) {
                b10.getClass();
                if (b10 != C5145Fd.f40259d && (!a10.f42023a.f41435a.isEmpty() || !a10.f42024b.a())) {
                    throw new AssertionError();
                }
            }
            c5203Gd = b10.f40262c;
            a10.getClass();
            if (!c5203Gd.a()) {
                a10 = new C5493Ld(a10.f42023a, a10.f42024b.a(c5203Gd));
            }
            for (com.android.tools.r8.graph.M2 m24 : e02.f36248h.f36675b) {
                if (m24 != null && m24 != this.f43286b.f38068i2) {
                    e05 = a12.a(this.f43285a, m24);
                    if (e05 == null) {
                        a12.a(m24);
                    }
                    b11 = e05 != null ? C5493Ld.f42022c : b(a12, e05);
                    if (!a10.f42023a.f41435a.isEmpty() && a10.f42024b.a()) {
                        a10 = b11;
                    } else if (b11.f42023a.f41435a.isEmpty() || !b11.f42024b.a()) {
                        a10 = new C5493Ld(a10.f42023a.a(b11.f42023a), a10.f42024b.a(b11.f42024b));
                    }
                }
                e05 = null;
                if (e05 != null) {
                }
                if (!a10.f42023a.f41435a.isEmpty()) {
                }
                if (b11.f42023a.f41435a.isEmpty()) {
                }
                a10 = new C5493Ld(a10.f42023a.a(b11.f42023a), a10.f42024b.a(b11.f42024b));
            }
            int i10 = AbstractC7552hC.f48487c;
            C7051eC c7051eC = new C7051eC();
            C5377Jd c5377Jd = a10.f42023a;
            if (e02.e0() || !this.f43285a.a(e02.d0())) {
                it = c5377Jd.f41435a.iterator();
                while (it.hasNext()) {
                    a(e02, b10, c7051eC, (com.android.tools.r8.graph.A2) ((C7333fv) it.next()).f48136c);
                }
            }
            C5203Gd c5203Gd3 = a10.f42024b;
            C4514j g10 = this.f43285a.g();
            for (C7333fv c7333fv : c5203Gd3.f40535a.f41435a) {
                com.android.tools.r8.graph.Z4 f10 = g10.f(e02, (com.android.tools.r8.graph.A2) c7333fv.f48136c);
                if (!f10.h()) {
                    ?? d10 = f10.o().d();
                    if (!d10.f0()) {
                        if (!c5203Gd3.f40536b.f40802a.contains(d10.f36245e)) {
                        }
                    }
                    ArrayList a13 = this.f43285a.g().a(e02, (com.android.tools.r8.graph.A2) c7333fv.f48136c);
                    int size = a13.size();
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = a13.get(i11);
                        i11++;
                        com.android.tools.r8.graph.E0 e06 = (com.android.tools.r8.graph.E0) ((Map.Entry) obj).getKey();
                        if (!e06.f0()) {
                            if (!c5203Gd3.f40536b.f40802a.contains(e06.f36245e)) {
                            }
                        }
                    }
                }
                C5377Jd c5377Jd2 = a10.f42024b.f40535a;
                C5377Jd c5377Jd3 = a10.f42023a;
                c5377Jd2.getClass();
                HashSet hashSet = new HashSet(c5377Jd2.f41435a);
                hashSet.removeAll(c5377Jd3.f41435a);
                if (c5377Jd2.f41435a.size() != hashSet.size()) {
                    c5377Jd2 = new C5377Jd(hashSet);
                }
                if (!e02.e0() || !this.f43285a.a(e02.d0())) {
                    Iterator it2 = c5377Jd2.f41435a.iterator();
                    while (it2.hasNext()) {
                        a(e02, b10, c7051eC, (com.android.tools.r8.graph.A2) ((C7333fv) it2.next()).f48136c);
                    }
                }
                a(e02, a10.f42024b.f40536b);
                AbstractC7552hC a14 = c7051eC.a();
                C5203Gd c5203Gd4 = C5203Gd.f40533c;
                if (!a14.isEmpty() || !c5203Gd4.a()) {
                    return new C5145Fd(b10, a14, c5203Gd4);
                }
                return b10;
            }
            a11 = c7051eC.a();
            c5203Gd2 = a10.f42024b;
            if (a11.isEmpty() || !c5203Gd2.a()) {
                return new C5145Fd(b10, a11, c5203Gd2);
            }
            return b10;
        }
        e03 = null;
        if (e03 != null) {
        }
        com.android.tools.r8.graph.M2 m232 = e02.f36247g;
        if (this.f43289e) {
        }
        if (!f43284m) {
        }
        c5203Gd = b10.f40262c;
        a10.getClass();
        if (!c5203Gd.a()) {
        }
        while (r5 < r3) {
        }
        int i102 = AbstractC7552hC.f48487c;
        C7051eC c7051eC2 = new C7051eC();
        C5377Jd c5377Jd4 = a10.f42023a;
        if (e02.e0()) {
        }
        it = c5377Jd4.f41435a.iterator();
        while (it.hasNext()) {
        }
        C5203Gd c5203Gd32 = a10.f42024b;
        C4514j g102 = this.f43285a.g();
        while (r3.hasNext()) {
        }
        a11 = c7051eC2.a();
        c5203Gd2 = a10.f42024b;
        if (a11.isEmpty()) {
        }
        return new C5145Fd(b10, a11, c5203Gd2);
    }

    public final C5493Ld a(com.android.tools.r8.graph.E0 e02) {
        if (!f43284m && e02.isInterface()) {
            throw new AssertionError();
        }
        if (e02.f0()) {
            return (C5493Ld) a(this.f43292h, e02.G(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C5724Pd.this.a((C4725u2) obj);
                }
            });
        }
        return C5493Ld.f42022c;
    }

    public final C5493Ld a(C4725u2 c4725u2) {
        com.android.tools.r8.graph.E0 e02;
        C5493Ld a10;
        com.android.tools.r8.graph.E0 e03;
        com.android.tools.r8.graph.M2 m22 = c4725u2.f36247g;
        if (!this.f43289e) {
            a10 = C5493Ld.f42022c;
        } else {
            if (m22 == null || m22 == this.f43286b.f38068i2 || (e02 = this.f43285a.g(m22)) == null) {
                e02 = null;
            }
            a10 = e02 == null ? C5493Ld.f42022c : a(e02);
        }
        for (com.android.tools.r8.graph.M2 m23 : c4725u2.f36248h.f36675b) {
            C5319Id c5319Id = C5319Id.f41152d;
            if (m23 == null || m23 == this.f43286b.f38068i2 || (e03 = c5319Id.a(this.f43285a, m23)) == null) {
                e03 = null;
            }
            C5493Ld b10 = e03 == null ? C5493Ld.f42022c : b(c5319Id, e03);
            if (a10.f42023a.f41435a.isEmpty() && a10.f42024b.a()) {
                a10 = b10;
            } else if (!b10.f42023a.f41435a.isEmpty() || !b10.f42024b.a()) {
                a10 = new C5493Ld(a10.f42023a.a(b10.f42023a), a10.f42024b.a(b10.f42024b));
            }
        }
        return a10;
    }

    public final C5493Ld a(C5435Kd c5435Kd, com.android.tools.r8.graph.E0 e02) {
        C5435Kd a10 = c5435Kd.a(e02);
        C5493Ld c5493Ld = C5493Ld.f42022c;
        for (com.android.tools.r8.graph.M2 m22 : e02.f36248h.f36675b) {
            com.android.tools.r8.graph.E0 e03 = null;
            if (m22 != null && m22 != this.f43286b.f38068i2) {
                com.android.tools.r8.graph.E0 a11 = a10.a(this.f43285a, m22);
                if (a11 == null) {
                    a10.a(m22);
                } else {
                    e03 = a11;
                }
            }
            C5493Ld b10 = e03 == null ? C5493Ld.f42022c : b(a10, e03);
            if (c5493Ld.f42023a.f41435a.isEmpty() && c5493Ld.f42024b.a()) {
                c5493Ld = b10;
            } else if (!b10.f42023a.f41435a.isEmpty() || !b10.f42024b.a()) {
                c5493Ld = new C5493Ld(c5493Ld.f42023a.a(b10.f42023a), c5493Ld.f42024b.a(b10.f42024b));
            }
        }
        if (this.f43287c.c(e02.f36245e)) {
            return a(e02, c5493Ld);
        }
        return b(e02, c5493Ld);
    }
}
