package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class T1 {

    public final C5058Dq f44364a = new C5058Dq(new HashSet());

    public final C4942Bq f44365b;

    public T1(C4942Bq c4942Bq) {
        this.f44365b = c4942Bq;
    }

    public static T1 a(final C4798y c4798y, Set set, final C5212Gg c5212Gg) {
        final C4942Bq c4942Bq = new C4942Bq();
        final Set c10 = AbstractC5513Ll0.c();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            h22.h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    T1.a(C4798y.this, c4942Bq, (com.android.tools.r8.graph.H5) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return T1.a((C4516j1) obj);
                }
            });
            h22.a(c4798y, new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return T1.a(Set.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    T1.a(C4942Bq.this, c5212Gg, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
                }
            });
        }
        return new T1(c4942Bq);
    }

    public static boolean a(C4516j1 c4516j1) {
        return (c4516j1.j1() || c4516j1.getAccessFlags().h()) ? false : true;
    }

    public static void a(C4798y c4798y, C4942Bq c4942Bq, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = c4798y.a(h52);
        C8570nJ E10 = c4798y.E();
        if (a10.c(E10) && a10.e(E10)) {
            return;
        }
        com.android.tools.r8.graph.D2 x10 = h52.x();
        c4942Bq.f39368b.put(x10, x10);
    }

    public static boolean a(Set set, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        return (e02 == null || e02.e0() || !set.add(e02.z())) ? false : true;
    }

    public static void a(C4942Bq c4942Bq, C5212Gg c5212Gg, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.S z10 = e02.z();
        c5212Gg.getClass();
        com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) z10;
        e03.getClass();
        C5058Dq c5058Dq = (C5058Dq) c5212Gg.f40556b.get(e03);
        if (c5058Dq == null) {
            c5058Dq = c5212Gg.a(e03);
        }
        c4942Bq.getClass();
        for (com.android.tools.r8.graph.F2 f22 : c5058Dq.f39661b) {
            c4942Bq.f39368b.put(f22, f22);
        }
    }

    public final boolean a(com.android.tools.r8.graph.D2 d22) {
        return (this.f44364a.f39661b.contains(d22) || this.f44365b.f39368b.containsValue(d22)) ? false : true;
    }
}
