package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public final class M7 {

    public static final C8696o40 f42181c = C8696o40.f51162b;

    public static final boolean f42182d = true;

    public final C4798y f42183a;

    public final O7 f42184b;

    public M7(C4798y c4798y) {
        this.f42183a = c4798y;
        this.f42184b = new O7(c4798y);
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Bridge hoisting");
        C4798y c4798y = this.f42183a;
        final C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
        com.android.tools.r8.graph.D a11 = com.android.tools.r8.graph.D.a(this.f42183a, a10);
        a11.f36818e = true;
        a11.a(((C11245i) this.f42183a.f()).d(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                M7.this.a(a10, (com.android.tools.r8.graph.H2) obj);
            }
        });
        if (!this.f42184b.f42785b.f49890b.isEmpty()) {
            O7 o72 = this.f42184b;
            if (!O7.f42783c) {
                if (o72.f42785b.f49890b.isEmpty()) {
                    throw new AssertionError();
                }
            } else {
                o72.getClass();
            }
            N7 n72 = new N7(o72.f42784a, o72.f42785b);
            C4798y c4798y2 = this.f42183a;
            c4798y2.a(n72, c4798y2.e().a(), executorService, c8659ns0);
        }
        this.f42183a.getClass();
        c8659ns0.d();
    }

    public final void a(C4387c4 c4387c4, com.android.tools.r8.graph.H2 h22) {
        S7 k10;
        List list = (List) c4387c4.f37096b.getOrDefault(h22, Collections.EMPTY_LIST);
        Comparator comparing = Comparator.comparing(new com.android.tools.r8.errors.q());
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(list);
        arrayList.sort(comparing);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) obj;
            if (this.f42183a.H().f50904s.test(h23)) {
                arrayList2.add(h23);
            }
        }
        C9933vX c9933vX = C9933vX.f53136a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size2 = arrayList2.size();
        while (i10 < size2) {
            Object obj2 = arrayList2.get(i10);
            i10++;
            C9406sK M12 = ((com.android.tools.r8.graph.H2) obj2).M1();
            CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
            while (a10.f43396b.hasNext()) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                if (!this.f42183a.a(h52).d(this.f42183a.E()) && (k10 = h52.A().k()) != null && (k10 instanceof C8841ox0)) {
                    linkedHashMap.put(new C7333fv(c9933vX, h52.getReference()), h52);
                }
            }
        }
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.H5) it.next(), h22, arrayList2);
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22, ArrayList arrayList) {
        C4516j1 s10;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        if (h22.e(reference) != null) {
            return;
        }
        if (h22.i1()) {
            C11245i c11245i = (C11245i) this.f42183a.f();
            com.android.tools.r8.graph.M2 a12 = h22.a1();
            if (C4514j.f37304i) {
                c11245i.getClass();
            } else {
                c11245i.c();
            }
            com.android.tools.r8.graph.Z4 a10 = c11245i.a(a12, reference.y0(), reference.t0());
            if (a10.w()) {
                if (!a10.q().d1()) {
                    return;
                }
            } else if (a10.v()) {
                return;
            }
        }
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) obj;
            C4516j1 c10 = h23.c(reference);
            if (c10 == null) {
                C4516j1 s11 = ((C11245i) this.f42183a.f()).f(h23, reference).s();
                if (s11 != null && !s11.d1()) {
                    return;
                }
            } else {
                c10.L0();
                S7 k10 = c10.f37320m.k();
                if (k10 != null && (k10 instanceof C8841ox0)) {
                    com.android.tools.r8.graph.A2 a22 = k10.a().f51394a;
                    if (h22.getType().z0().equals(h23.getType().z0()) || ((s10 = ((C11245i) this.f42183a.f()).e(h22, a22).s()) != null && !s10.getAccessFlags().f())) {
                        ((List) hashMap.computeIfAbsent(new C7333fv(C9933vX.f53136a, a22), new Function() {
                            @Override
                            public final Object apply(Object obj2) {
                                return M7.a((C7333fv) obj2);
                            }
                        })).add(h23);
                    }
                }
            }
        }
        if (hashMap.isEmpty()) {
            return;
        }
        Map.Entry entry = null;
        for (Map.Entry entry2 : hashMap.entrySet()) {
            List list = (List) entry2.getValue();
            if (entry == null || list.size() > ((List) entry.getValue()).size()) {
                entry = entry2;
            }
        }
        if (!f42182d && entry == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) ((C7333fv) entry.getKey()).f48136c;
        List list2 = (List) entry.getValue();
        ArrayList arrayList2 = new ArrayList();
        Iterator<E> it = list2.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H5 e10 = ((com.android.tools.r8.graph.H2) it.next()).e(reference);
            if (e10 != null) {
                arrayList2.add(e10);
            }
        }
        if (!f42182d && arrayList2.isEmpty()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) arrayList2.iterator().next();
        int d10 = h53.getAccessFlags().d();
        int size2 = arrayList2.size();
        while (i10 < size2) {
            Object obj2 = arrayList2.get(i10);
            i10++;
            com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) obj2;
            if (h54.getAccessFlags().d() != d10) {
                return;
            }
            if (!h22.getType().z0().equals(h54.p().z0()) && !h54.d().H0()) {
                return;
            }
        }
        com.android.tools.r8.graph.A2 a11 = this.f42183a.b().a(h22.f36245e, a23.f36127i, a23.f38298g);
        if (((C11245i) this.f42183a.f()).f(h22, a11).w()) {
            h53.a(a(h53, a11), this.f42183a);
            C8696o40 c8696o40 = f42181c;
            C8841ox0 c8841ox0 = new C8841ox0(a11);
            c8696o40.getClass();
            h53.d().T0().f45457l = c8841ox0;
            C4724u1 b10 = this.f42183a.b();
            reference.getClass();
            com.android.tools.r8.graph.A2 a13 = reference.a(h22.getType(), b10);
            C4516j1 d11 = h53.d();
            C4724u1 b11 = this.f42183a.b();
            d11.L0();
            C4516j1 a14 = d11.a(a13, b11, (Consumer) null);
            if (a14.getAccessFlags().e()) {
                a14.getAccessFlags().a();
            }
            h22.f36252l.f36638b.c(a14);
            O7 o72 = this.f42184b;
            InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
                @Override
                public final Object apply(Object obj3) {
                    return ((com.android.tools.r8.graph.H5) obj3).getReference();
                }
            };
            Object obj3 = (com.android.tools.r8.graph.A2) h53.getReference();
            Object c11 = o72.f42785b.c(obj3);
            if (c11 != null) {
                obj3 = c11;
            }
            com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) obj3;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList2.iterator();
            it2.getClass();
            while (it2.hasNext()) {
                com.android.tools.r8.graph.A2 a25 = (com.android.tools.r8.graph.A2) interfaceC5422Jy.apply(it2.next());
                Set a15 = o72.f42785b.a(a25);
                if (a15.isEmpty()) {
                    linkedHashSet.add(a25);
                } else {
                    linkedHashSet.addAll(a15);
                }
            }
            if (!O7.f42783c && !linkedHashSet.contains(a24)) {
                throw new AssertionError();
            }
            o72.f42785b.a((Iterable) linkedHashSet, (Object) a13);
            o72.f42785b.f50507e.put(a13, a24);
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                C4516j1 d12 = ((com.android.tools.r8.graph.H2) it3.next()).d(reference);
                if (!f42182d && d12 == null) {
                    throw new AssertionError();
                }
            }
        }
    }

    public static List a(C7333fv c7333fv) {
        return new ArrayList();
    }

    public static WS a(com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.A2 a22) {
        WS o02 = h52.d().Q0().o0();
        YS[] ysArr = (YS[]) X3.a((Object[]) o02.f45405g, new Function() {
            @Override
            public final Object apply(Object obj) {
                return M7.a(com.android.tools.r8.graph.A2.this, (YS) obj);
            }
        }, (Object[]) new YS[0]);
        return o02.f45405g == ysArr ? o02 : new WS(ysArr, o02.f45406h, o02.f45407i, o02.f45408j, o02.f45409k, o02.f45410l, o02.f45411m, o02.f45403e, o02.f45404f, o02.f45412n);
    }

    public static YS a(com.android.tools.r8.graph.A2 a22, YS ys) {
        if (!(ys instanceof com.android.tools.r8.graph.A2)) {
            return ys;
        }
        if (f42182d || a22.c((com.android.tools.r8.graph.A2) ys)) {
            return a22;
        }
        throw new AssertionError();
    }
}
