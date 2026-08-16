package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.internal.AbstractC4885Aq0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5496Le;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6037Un;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.BV;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C5339Il0;
import com.android.tools.r8.internal.C5921Sn;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C5979Tn;
import com.android.tools.r8.internal.C6052Uu0;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.GK;
import com.android.tools.r8.internal.InterfaceC6103Vr0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.TU;
import com.ardor3d.util.export.xml.XMLExporter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class U0 {

    public static final boolean f57011f = true;

    public final C4798y f57012a;

    public final C4724u1 f57013b;

    public final N f57014c;

    public final A4 f57015d;

    public final C10325xr0 f57016e;

    public U0(C4798y c4798y, N n10, A4 a42, C10325xr0 c10325xr0) {
        if (!f57011f && c10325xr0.f53861c.size() != 0) {
            throw new AssertionError();
        }
        this.f57012a = c4798y;
        this.f57013b = c4798y.b();
        this.f57014c = n10;
        this.f57015d = a42;
        this.f57016e = c10325xr0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.List] */
    public final void a(G3 g32, ArrayList arrayList) {
        if (arrayList.size() > 1) {
            Iterator it = ((C6057Ux) g32.f56497u.u()).iterator();
            int i10 = 0;
            while (true) {
                if (it.hasNext()) {
                    it.next();
                    i10++;
                    if (i10 > 1) {
                        break;
                    }
                } else if (i10 == 1) {
                    arrayList = BV.a(g32, arrayList);
                }
            }
        }
        for (C8699o50 c8699o50 : arrayList) {
            H3 h32 = (H3) c8699o50.a();
            try {
                this.f57015d.a(this.f57016e, (K3) c8699o50.b(), h32);
            } catch (ExecutionException e10) {
                throw new C6052Uu0(e10);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
    
        a(r8, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0087, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(List list, G3 g32) {
        boolean z10;
        Iterable u10 = g32.f56497u.u();
        boolean z11 = true;
        if (u10 instanceof Collection) {
            z10 = ((Collection) u10).isEmpty();
        } else {
            z10 = !((GK) ((C6057Ux) u10).iterator()).hasNext();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z11 = false;
                break;
            }
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) it.next();
            boolean a10 = g32.c().a(e02.f36245e);
            boolean z12 = f57011f;
            if (!z12 && !a10) {
                throw new AssertionError();
            }
            if (g32.k()) {
                boolean b10 = this.f57015d.b(e02, g32);
                if (!z12 && !b10) {
                    throw new AssertionError();
                }
            }
            H3 h32 = new H3(g32, e02);
            h32.a(this.f57014c, this.f57015d);
            C4724u1 c4724u1 = this.f57013b;
            g32.f57913o = true;
            arrayList.add(new C8699o50(h32, g32.f56497u.a(c4724u1)));
            if (z10) {
                break;
            }
        }
    }

    public final void a(HashMap hashMap, final com.android.tools.r8.graph.V v10, final Iterable iterable, final Predicate predicate) {
        TU.a(hashMap, new InterfaceC6103Vr0() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return U0.this.a(v10, iterable, predicate, (C7333fv) obj, (Set) obj2);
            }
        });
        this.f57016e.a((Consumer) null);
    }

    public final void a(G3 g32, Set set, com.android.tools.r8.graph.E0 e02, final ArrayList arrayList) {
        if (a(g32, e02)) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                final G3 g33 = (G3) it.next();
                boolean a10 = g33.c().a(e02.f36245e);
                boolean z10 = f57011f;
                if (!z10 && !a10) {
                    throw new AssertionError();
                }
                if (g33.k()) {
                    boolean b10 = this.f57015d.b(e02, g33);
                    if (!z10 && !b10) {
                        throw new AssertionError();
                    }
                }
                final ArrayList arrayList2 = new ArrayList();
                a(g33, e02, new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        return U0.this.a(arrayList2, g33, arrayList, (H3) obj, (K3) obj2);
                    }
                });
                a(g33, arrayList2);
            }
        }
    }

    public final boolean a(List list, G3 g32, List list2, H3 h32, K3 k32) {
        boolean z10;
        list.add(new C8699o50(h32, k32));
        Iterable u10 = g32.f56497u.u();
        if (u10 instanceof Collection) {
            z10 = ((Collection) u10).isEmpty();
        } else {
            z10 = !((GK) ((C6057Ux) u10).iterator()).hasNext();
        }
        if (!z10) {
            return false;
        }
        list2.add(g32);
        return true;
    }

    public final void a(HashMap hashMap, final IdentityHashMap identityHashMap, final C8659ns0 c8659ns0) {
        final ArrayList arrayList = new ArrayList(identityHashMap.size());
        TU.a(hashMap, new InterfaceC6103Vr0() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return U0.this.a(identityHashMap, arrayList, c8659ns0, (C7333fv) obj, (Set) obj2);
            }
        });
        this.f57016e.a((Consumer) null);
    }

    public final boolean a(G3 g32, com.android.tools.r8.graph.E0 e02) {
        AbstractC11194f a10;
        if (this.f57012a.H().f50863b1) {
            this.f57012a.H().f50866c1.f50921a++;
        }
        if (g32.d().a(e02) == g32.f57283g || !g32.a().a(e02.f36246f) || !g32.h().b(e02.f36246f) || (a10 = I4.a(g32.b(), e02, e02.k0(), EnumC4629p0.f37568d)) == null) {
            return false;
        }
        this.f57015d.a(a10);
        if (!g32.c().a(e02.f36245e)) {
            return false;
        }
        if (g32.k()) {
            return this.f57015d.b(e02, g32);
        }
        return true;
    }

    public final void a(G3 g32, final com.android.tools.r8.graph.E0 e02, BiPredicate biPredicate) {
        Set<Set> c5339Il0;
        if (this.f57012a.H().f50863b1) {
            this.f57012a.H().f50866c1.f50922b++;
        }
        List<R3> g10 = g32.g();
        if (!f57011f && g10.isEmpty()) {
            throw new AssertionError();
        }
        final ArrayList arrayList = new ArrayList();
        Set c10 = AbstractC5513Ll0.c();
        if (!e02.e0()) {
            AbstractC9907vK.a(e02.y1(), c10);
        } else {
            AbstractC9907vK.a(e02.f36251k.f37700b.a(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return U0.this.a(arrayList, e02, (C4460g1) obj);
                }
            }), c10);
            AbstractC9907vK.a(e02.c(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return U0.this.a(e02, (C4516j1) obj);
                }
            }), c10);
            if (!arrayList.isEmpty()) {
                for (R3 r32 : g10) {
                    if (r32.h().a()) {
                        int size = arrayList.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayList.get(i10);
                            i10++;
                            com.android.tools.r8.graph.F0 f02 = (com.android.tools.r8.graph.F0) obj;
                            if (this.f57015d.a(r32, f02)) {
                                C4554l1 reference = f02.getReference();
                                ConcurrentHashMap concurrentHashMap = g32.f56498v;
                                if (concurrentHashMap != null) {
                                    concurrentHashMap.put(reference, reference);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (c10.size() < g10.size()) {
            return;
        }
        int size2 = g10.size();
        C8051kC c8051kC = new C8051kC(c10.size());
        Iterator<E> it = c10.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            c8051kC.a(it.next(), Integer.valueOf(i11));
            i11++;
        }
        AbstractC8552nC b10 = c8051kC.b();
        AbstractC5496Le.a(size2, XMLExporter.ATTRIBUTE_SIZE);
        boolean z10 = size2 <= b10.size();
        int size3 = b10.size();
        if (z10) {
            if (size2 == 0) {
                int i12 = QC.f43505c;
                c5339Il0 = new C5978Tm0(C7119ef0.f47742j);
            } else if (size2 == b10.size()) {
                QC keySet = b10.keySet();
                int i13 = QC.f43505c;
                c5339Il0 = new C5978Tm0(keySet);
            } else {
                c5339Il0 = new C5339Il0(size2, b10);
            }
            for (Set set : c5339Il0) {
                final Collection collection = (Collection) AbstractC4365b1.a(set.stream(), new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        com.android.tools.r8.graph.F0 a10;
                        a10 = com.android.tools.r8.graph.F0.a(com.android.tools.r8.graph.E0.this, (C4460g1) obj2);
                        return a10;
                    }
                }).collect(Collectors.toList());
                final Collection collection2 = (Collection) AbstractC4365b1.b(set.stream(), new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        com.android.tools.r8.graph.H0 a10;
                        a10 = com.android.tools.r8.graph.H0.a(com.android.tools.r8.graph.E0.this, (C4516j1) obj2);
                        return a10;
                    }
                }).collect(Collectors.toList());
                C5921Sn c5921Sn = AbstractC6037Un.f44869d;
                final C5979Tn c5979Tn = new C5979Tn();
                if (g10.stream().allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return U0.this.a(collection, collection2, c5979Tn, (R3) obj2);
                    }
                })) {
                    H3 h32 = new H3(g32, e02, c5979Tn);
                    h32.a(this.f57014c, this.f57015d);
                    C4724u1 c4724u1 = this.f57013b;
                    g32.f57913o = true;
                    if (biPredicate.test(h32, g32.f56497u.a(c4724u1))) {
                        return;
                    }
                }
            }
            return;
        }
        throw new IllegalArgumentException(AbstractC4885Aq0.a("size (%s) must be <= set.size() (%s)", Integer.valueOf(size2), Integer.valueOf(size3)));
    }

    public final boolean a(com.android.tools.r8.graph.V v10, Iterable iterable, Predicate predicate, C7333fv c7333fv, final Set set) {
        G3 g32 = (G3) c7333fv.f48136c;
        ArrayList arrayList = new ArrayList();
        if (v10 == com.android.tools.r8.graph.V.f36877c) {
            iterable = g32.a(this.f57012a, this.f57014c.f56800i, iterable, predicate);
        }
        for (com.android.tools.r8.graph.E0 e02 : iterable) {
            if (!f57011f && e02.e0() && !predicate.test(e02.d0())) {
                throw new AssertionError();
            }
            a(g32, set, e02, arrayList);
        }
        if (set.size() == arrayList.size()) {
            return true;
        }
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.remove((G3) obj);
            }
        });
        return false;
    }

    public final boolean a(Map map, final List list, C8659ns0 c8659ns0, C7333fv c7333fv, Set set) {
        G3 g32 = (G3) c7333fv.f48136c;
        c8659ns0.b("Evaluate precondition");
        if (g32.c().e()) {
            c8659ns0.b("Evaluate single class");
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) map.get(g32.c().b());
            if (e02 != null && a(g32, e02)) {
                list.add(e02);
            }
            c8659ns0.d();
        } else {
            for (com.android.tools.r8.graph.E0 e03 : map.values()) {
                c8659ns0.b("Evaluate class");
                if (a(g32, e03)) {
                    list.add(e03);
                }
                c8659ns0.d();
            }
        }
        c8659ns0.d();
        if (!list.isEmpty()) {
            set.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return U0.this.a(list, (G3) obj);
                }
            });
            list.clear();
        }
        return set.isEmpty();
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02, C4516j1 c4516j1) {
        if (!this.f57014c.f56774Q.f56716a.contains(c4516j1) && !this.f57014c.f56768K.f56716a.contains(c4516j1)) {
            c4516j1.L0();
            if (!c4516j1.f37320m.E()) {
                return false;
            }
        }
        AbstractC5308Hz v10 = this.f57012a.v();
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        v10.getClass();
        return v10.a(AbstractC5308Hz.g(), reference).s0().a(e02.getType());
    }

    public final boolean a(Collection collection, Collection collection2, AbstractC6037Un abstractC6037Un, R3 r32) {
        if (this.f57015d.b(r32, collection)) {
            return true;
        }
        com.android.tools.r8.graph.H0 a10 = this.f57015d.a(r32, collection2);
        if (a10 == null) {
            return false;
        }
        abstractC6037Un.add((AbstractC6037Un) a10);
        return true;
    }

    public final boolean a(List list, com.android.tools.r8.graph.E0 e02, C4460g1 c4460g1) {
        boolean a10;
        if (this.f57014c.f56786b.a()) {
            a10 = c4460g1.f37209n;
        } else {
            a10 = c4460g1.a(this.f57013b);
        }
        if (a10) {
            list.add(com.android.tools.r8.graph.F0.a(e02, c4460g1));
            return false;
        }
        if (this.f57014c.f56775R.f56689a.contains(c4460g1) || this.f57014c.a(c4460g1) || c4460g1.f37207l.j()) {
            AbstractC5308Hz v10 = this.f57012a.v();
            C4554l1 reference = c4460g1.getReference();
            v10.getClass();
            if (v10.a(AbstractC5308Hz.g(), reference).s0().a(e02.getType())) {
                return true;
            }
        }
        return false;
    }
}
