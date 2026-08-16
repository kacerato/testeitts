package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C6223Xu0 {

    public final IdentityHashMap f45853a = new IdentityHashMap();

    public final C6280Yu0 f45854b;

    public C6223Xu0(C6280Yu0 c6280Yu0) {
        this.f45854b = c6280Yu0;
    }

    public final com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22, Map map, Consumer consumer, com.android.tools.r8.graph.A2 a23) {
        return a(h22, a22, map, consumer);
    }

    public final synchronized com.android.tools.r8.graph.H5 b(final com.android.tools.r8.graph.H2 h22, final com.android.tools.r8.graph.A2 a22, final Map map, final Consumer consumer) {
        return (com.android.tools.r8.graph.H5) ((Map) this.f45853a.computeIfAbsent(h22, TU.a(new com.android.tools.r8.graph.Ra()))).computeIfAbsent(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6223Xu0.this.a(h22, a22, map, consumer, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.H5 a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22, Map map, Consumer consumer) {
        com.android.tools.r8.graph.H2 a10;
        com.android.tools.r8.graph.M2 a12 = h22.a1();
        while (true) {
            if (a12.a(a22.s0()) || (a10 = com.android.tools.r8.graph.H2.a(this.f45854b.f46108a.g(a12))) == null) {
                break;
            }
            if (map.containsKey(a12)) {
                a22 = b(a10, a22, map, consumer).getReference();
                break;
            }
            a12 = a10.a1();
        }
        C4724u1 b10 = this.f45854b.f46108a.b();
        a22.getClass();
        com.android.tools.r8.graph.A2 a11 = a22.a(h22.getType(), b10);
        AbstractC7552hC abstractC7552hC = this.f45854b.f46109b.f51821a;
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6223Xu0.a(com.android.tools.r8.graph.H2.this, (com.android.tools.r8.graph.A2) obj);
            }
        };
        b10.getClass();
        com.android.tools.r8.graph.A2 a13 = b10.a(a11, abstractC7552hC, predicate, C6628bi.b());
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        int i10 = 1;
        C4516j1.a a14 = AbstractC8294li.a(a13, true);
        com.android.tools.r8.graph.K4 k42 = new com.android.tools.r8.graph.K4();
        ((com.android.tools.r8.graph.L4) k42.f37168a).a(65536);
        com.android.tools.r8.graph.K4 k43 = (com.android.tools.r8.graph.K4) k42.a(true);
        k43.f37168a.z();
        C4516j1.a a15 = a14.a((com.android.tools.r8.graph.L4) k43.f37168a);
        C7702i60 c7702i60 = new C7702i60();
        PS a16 = WS.a(a13, true, (AbstractC6590bT) c7702i60, this.f45854b.f46108a.E());
        ArrayList arrayList = new ArrayList();
        com.android.tools.r8.graph.M2 s02 = a13.s0();
        C4798y c4798y = this.f45854b.f46108a;
        C8854p10 b11 = C8854p10.b();
        s02.getClass();
        C10340xw0 c10340xw0 = new C10340xw0(0, AbstractC8999pu0.a(s02, b11, (C4798y<?>) c4798y), null);
        arrayList.add(c10340xw0);
        c7702i60.f48841b.b(c10340xw0.t(), c10340xw0);
        a16.a(c10340xw0.t());
        while (i10 < a22.a(false)) {
            com.android.tools.r8.graph.M2 a17 = a22.a(i10, false);
            C10340xw0 c10340xw02 = new C10340xw0(i10, a17.b(this.f45854b.f46108a), null);
            arrayList.add(c10340xw02);
            c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
            int t10 = c10340xw02.t();
            a17.F0();
            a16.a(t10);
            i10++;
        }
        while (i10 < a13.a(false)) {
            a13.a(i10, false).F0();
            a16.a(i10);
            i10++;
        }
        a16.a(205, Collections.singletonList(a22), arrayList);
        a16.b();
        C4516j1.a a18 = a15.a(a16.d());
        a18.f37339k = C5313Ib.f41136g;
        C4798y c4798y2 = this.f45854b.f46108a;
        a18.f37341m = c4798y2.f38404S.a(c4798y2.E());
        C4798y c4798y3 = this.f45854b.f46108a;
        a18.f37340l = c4798y3.f38404S.a(c4798y3.E());
        com.android.tools.r8.graph.H5 a19 = a18.a().a(h22);
        consumer.accept(a19);
        return a19;
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22) {
        return h22.f36252l.f36638b.a(a22) == null;
    }

    public final void a() {
        this.f45853a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6223Xu0.a((com.android.tools.r8.graph.H2) obj, (Map) obj2);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.H2 h22, Map map) {
        List a10 = AT.a(map.values(), new C10026w21());
        Comparator comparing = Comparator.comparing(new com.android.tools.r8.graph.I9());
        ArrayList arrayList = new ArrayList(a10);
        arrayList.sort(comparing);
        com.android.tools.r8.graph.N4 n42 = h22.f36252l;
        n42.getClass();
        if (!com.android.tools.r8.graph.N4.f36636d) {
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C4516j1 c4516j1 = (C4516j1) obj;
                if (!com.android.tools.r8.graph.N4.f36636d) {
                    n42.c(c4516j1);
                }
            }
        }
        n42.f36639c = C4516j1.f37311v;
        n42.f36638b.a(arrayList);
    }
}
