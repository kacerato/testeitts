package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11126b;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11350o3;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Predicate;

public final class C8787of0 {

    public static final boolean f51306d = true;

    public final C4798y f51307a;

    public final C11350o3 f51308b;

    public final InterfaceC8453mf0 f51309c;

    public C8787of0(C4798y c4798y) {
        this.f51307a = c4798y;
        this.f51308b = c4798y.E().B();
        this.f51309c = (InterfaceC8453mf0) c4798y.E().f50599F1.f50916y.apply(c4798y);
    }

    public final void a(ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Repackage classes");
        C4462g3.a c10 = ((C11245i) this.f51307a.f()).a().a().c();
        C9788uf0 a10 = a(c10, executorService);
        if (a10 != null) {
            this.f51307a.a(a10, c10.b(), executorService, c8659ns0);
            this.f51307a.H().f50812D.accept(this.f51307a.b(), a10);
            C4798y c4798y = this.f51307a;
            new C10682zz(c4798y).a(((C11245i) c4798y.f()).d(), executorService);
            new com.android.tools.r8.naming.D(this.f51307a).c(executorService);
        }
        this.f51307a.getClass();
        c8659ns0.d();
    }

    public static void a(C4798y c4798y, ExecutorService executorService) {
        ArrayList a10 = new C8119kf0(c4798y).a(((C11245i) c4798y.f()).e());
        new C9621tf0();
        boolean z10 = C9788uf0.f52910p;
        C5412Jt c5412Jt = C8268lZ.f49994j;
        Map map = Collections.EMPTY_MAP;
        c4798y.a(new C9454sf0(c4798y), ((C4462g3.a) ((C11245i) c4798y.f()).a().a().c().a((AbstractCollection) new ArrayList(a10))).b(), executorService, C8659ns0.c());
    }

    public final C9788uf0 a(C4462g3.a aVar, ExecutorService executorService) {
        boolean z10;
        Collection collection;
        C8570nJ.m j10 = this.f51308b.j();
        j10.getClass();
        if (j10 == C8570nJ.m.f50793b) {
            return null;
        }
        C7045eA c7045eA = new C7045eA(16);
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        C4798y c4798y = this.f51307a;
        if (!com.android.tools.r8.graph.W5.f36935c && c4798y.f().g().b()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.W5 w52 = new com.android.tools.r8.graph.W5();
        Iterator<com.android.tools.r8.graph.H2> it = c4798y.f().d().iterator();
        while (it.hasNext()) {
            w52.a(it.next());
        }
        Iterator it2 = w52.f36565b.values().iterator();
        while (true) {
            z10 = false;
            if (!it2.hasNext()) {
                break;
            }
            com.android.tools.r8.graph.K5 k52 = (com.android.tools.r8.graph.K5) it2.next();
            if (((C8286lf0) this.f51309c).a(k52)) {
                for (com.android.tools.r8.graph.H2 h22 : k52.f36537c) {
                    if (!((C11245i) this.f51307a.f()).a(h22, this.f51307a)) {
                        c7045eA.a(h22.getType(), h22.getType(), false);
                    }
                }
                Iterator it3 = k52.f36537c.iterator();
                while (it3.hasNext()) {
                    a((com.android.tools.r8.graph.H2) it3.next(), k52, k52.f36536b, c7045eA);
                }
                String str = k52.f36536b;
                hashMap.put(str, str);
                hashSet.add(k52.f36536b);
                it2.remove();
            }
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it4 = w52.f36565b.values().iterator();
        while (it4.hasNext()) {
            com.android.tools.r8.graph.K5 k53 = (com.android.tools.r8.graph.K5) it4.next();
            C9287rf0 c9287rf0 = new C9287rf0(this.f51307a, k53);
            Iterator it5 = c9287rf0.f52087b.f36537c.iterator();
            boolean z11 = z10;
            while (it5.hasNext()) {
                com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it5.next();
                boolean a10 = ((C11245i) c9287rf0.f52086a.f()).a(h23, c9287rf0.f52086a);
                boolean z12 = !a10;
                Iterator it6 = it4;
                C9121qf0 c9121qf0 = new C9121qf0(h23);
                Iterator it7 = it5;
                c9287rf0.f52088c.put(h23, c9121qf0);
                if (!a10) {
                    c9287rf0.f52089d.add(c9121qf0);
                }
                Iterator it8 = h23.y1().iterator();
                while (true) {
                    GK gk2 = (GK) it8;
                    if (gk2.hasNext()) {
                        AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) gk2.next();
                        C9121qf0 c9121qf02 = new C9121qf0(abstractC4479h1);
                        c9287rf0.f52088c.put(abstractC4479h1, c9121qf02);
                        c9121qf0.f51843b.add(c9121qf02);
                        c9121qf02.f51843b.add(c9121qf0);
                        it8 = it8;
                    }
                }
                z11 |= z12;
                it4 = it6;
                it5 = it7;
            }
            Iterator it9 = it4;
            if (!z11) {
                collection = QC.a(k53.f36537c);
            } else {
                c9287rf0.a(executorService);
                Set set = c9287rf0.f52089d;
                C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                c6286Yx0.b((Iterable) set);
                while (c6286Yx0.b()) {
                    Iterator it10 = ((C9121qf0) c6286Yx0.c()).f51843b.iterator();
                    while (it10.hasNext()) {
                        c6286Yx0.b((C6286Yx0) it10.next());
                    }
                }
                Set a11 = c6286Yx0.a();
                ArrayList arrayList = new ArrayList();
                for (com.android.tools.r8.graph.H2 h24 : c9287rf0.f52087b.f36537c) {
                    if (!a11.contains(c9287rf0.a((AbstractC4365b1) h24))) {
                        arrayList.add(h24);
                    }
                }
                collection = arrayList;
            }
            identityHashMap.put(k53, collection);
            if (collection.size() != QC.a(k53.f36537c).size()) {
                hashSet.add(k53.f36536b);
            }
            it4 = it9;
            z10 = false;
        }
        for (com.android.tools.r8.graph.K5 k54 : w52.f36565b.values()) {
            Collection collection2 = (Collection) identityHashMap.get(k54);
            if (!collection2.isEmpty()) {
                if (!f51306d && ((C8286lf0) this.f51309c).a(k54)) {
                    throw new AssertionError();
                }
                String a12 = ((C8286lf0) this.f51309c).a(k54, hashSet);
                Iterator it11 = collection2.iterator();
                while (it11.hasNext()) {
                    a((com.android.tools.r8.graph.H2) it11.next(), k54, a12, c7045eA);
                }
                hashSet.add(a12);
                String str2 = k54.f36536b;
                if (collection2.size() != QC.a(k54.f36537c).size()) {
                    a12 = k54.f36536b;
                }
                hashMap.put(str2, a12);
            }
        }
        new C8761oV(c7045eA).removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a13;
                a13 = ((com.android.tools.r8.graph.M2) r1.getKey()).a((com.android.tools.r8.graph.M2) ((Map.Entry) obj).getValue());
                return a13;
            }
        });
        if (c7045eA.isEmpty()) {
            return null;
        }
        C9621tf0 c9621tf0 = new C9621tf0();
        aVar.a((AbstractCollection) new ArrayList(new C8620nf0(this.f51307a, c7045eA, c9621tf0).a(((C11245i) this.f51307a.f()).e())));
        C4798y c4798y2 = this.f51307a;
        if (!C9621tf0.f52653d && c9621tf0.f52654a.f51964b.isEmpty()) {
            throw new AssertionError();
        }
        C9788uf0 c9788uf0 = new C9788uf0(c4798y2, c9621tf0.f52655b, c9621tf0.f52656c, c9621tf0.f52654a, hashMap);
        new C11126b(this.f51307a, c9788uf0).a(aVar.f38316a, executorService);
        return c9788uf0;
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.K5 k52, String str, C7045eA c7045eA) {
        C4425e4 P02;
        com.android.tools.r8.graph.M2 m22;
        if (c7045eA.containsKey(h22.getType())) {
            return;
        }
        com.android.tools.r8.graph.H2 h23 = null;
        com.android.tools.r8.graph.H2 a10 = (!h22.d1() || (m22 = h22.O0().f37289a) == null) ? null : com.android.tools.r8.graph.H2.a(this.f51307a.g(m22));
        if (a10 == null && (P02 = h22.P0()) != null && P02.d() != null) {
            a10 = com.android.tools.r8.graph.H2.a(this.f51307a.g(P02.d()));
        }
        if (a10 != null) {
            if (k52.f36537c.contains(a10)) {
                a(a10, k52, str, c7045eA);
            }
            c7045eA.a(h22.getType(), ((C8286lf0) this.f51309c).a(h22, h23, str, c7045eA), false);
        }
        h23 = a10;
        c7045eA.a(h22.getType(), ((C8286lf0) this.f51309c).a(h22, h23, str, c7045eA), false);
    }
}
