package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public abstract class U7 {
    public static C6178Xa0 a(final C4798y c4798y, List list, ExecutorService executorService) {
        AbstractC9109qb0 abstractC9109qb0;
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = AbstractC9907vK.c(list, new Y60(new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.dex.t0) obj).d();
            }
        })).iterator();
        while (true) {
            AbstractC7015e0 abstractC7015e0 = (AbstractC7015e0) it;
            if (!abstractC7015e0.hasNext()) {
                break;
            }
            com.android.tools.r8.dex.t0 t0Var = (com.android.tools.r8.dex.t0) abstractC7015e0.next();
            FeatureSplit featureSplit = t0Var.f35958d;
            if (featureSplit == null) {
                featureSplit = FeatureSplit.BASE;
            }
            ((List) identityHashMap.computeIfAbsent(featureSplit, TU.a(new com.android.tools.r8.graph.Uc()))).add(t0Var);
        }
        final List list2 = (List) identityHashMap.getOrDefault(FeatureSplit.BASE, Collections.EMPTY_LIST);
        C8570nJ E10 = c4798y.E();
        C6121Wa0 c6121Wa0 = new C6121Wa0();
        c6121Wa0.f45473a = new C7274fb0(E10);
        c6121Wa0.f45474b = E10.q().f52266a.isEmpty() ? null : new C6064Va0();
        boolean z10 = C6235Ya0.f46033c;
        C8570nJ E11 = c4798y.E();
        if (!z10 && E11.f50685h <= 0) {
            throw new AssertionError();
        }
        c6121Wa0.f45475c = new C6235Ya0(C5467Kr0.a(executorService), System.nanoTime() - E11.f50685h);
        boolean P10 = E10.P();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C6121Wa0) obj).a(List.this);
            }
        };
        if (P10) {
            consumer.accept(c6121Wa0);
        }
        boolean I10 = E10.I();
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                U7.a(C4798y.this, identityHashMap, (C6121Wa0) obj);
            }
        };
        if (I10) {
            consumer2.accept(c6121Wa0);
        }
        c6121Wa0.f45478f = E10.f50672d == null ? null : new C9609tb0(E10.f50682g);
        C8981po0 E12 = E10.E();
        if (!C8981po0.f51617j && (abstractC9109qb0 = E12.f51626i.f50596E1) != null && !(abstractC9109qb0 instanceof C8775ob0)) {
            throw new AssertionError();
        }
        c6121Wa0.f45479g = E12.f51625h.isEmpty() ? null : new C10611zb0(E12);
        C4850Ab0 a10 = C4850Ab0.a(c4798y);
        return new C6178Xa0(c6121Wa0.f45473a, c6121Wa0.f45474b, c6121Wa0.f45475c, c6121Wa0.f45476d, new C4908Bb0(Math.round((a10.f38637b * 10000) / a10.f38636a) / 100.0f, Math.round((a10.f38638c * 10000) / a10.f38636a) / 100.0f, Math.round((a10.f38639d * 10000) / a10.f38636a) / 100.0f), c6121Wa0.f45477e, c6121Wa0.f45478f, c6121Wa0.f45479g);
    }

    public static void a(C4798y c4798y, Map map, C6121Wa0 c6121Wa0) {
        c6121Wa0.f45477e = C6608bb0.a(c4798y, map);
    }
}
