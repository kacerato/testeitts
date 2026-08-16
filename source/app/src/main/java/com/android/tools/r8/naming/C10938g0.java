package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H9;
import com.android.tools.r8.graph.Q5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C6628bi;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C10938g0 implements Q5 {

    public static final boolean f55898d = true;

    public final ConcurrentHashMap f55899a;

    public final C4798y f55900b;

    public final ConcurrentHashMap f55901c;

    public C10938g0(ConcurrentHashMap concurrentHashMap, C4798y c4798y, ConcurrentHashMap concurrentHashMap2) {
        this.f55899a = concurrentHashMap;
        this.f55900b = c4798y;
        this.f55901c = concurrentHashMap2;
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        C4460g1 q10;
        if (this.f55899a.containsKey(c4554l1) || (q10 = ((C4514j) this.f55900b.f()).c(c4554l1).q()) == null || q10.getReference().a(c4554l1) || !this.f55899a.containsKey(q10.getReference())) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.f55899a;
        concurrentHashMap.put(c4554l1, (com.android.tools.r8.graph.L2) concurrentHashMap.get(q10.getReference()));
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        if (a22.s0().E0() || this.f55901c.containsKey(a22)) {
            return;
        }
        Z4 e10 = ((C4514j) this.f55900b.f()).e(a22);
        C4516j1 q10 = e10.q();
        if (q10 != null && !q10.getReference().a(a22) && this.f55901c.containsKey(q10.getReference())) {
            ConcurrentHashMap concurrentHashMap = this.f55901c;
            concurrentHashMap.put(a22, (com.android.tools.r8.graph.L2) concurrentHashMap.get(q10.getReference()));
        }
        if (e10.h()) {
            ArrayList arrayList = new ArrayList();
            e10.k().a(C6628bi.b(), new H9(arrayList));
            if (arrayList.isEmpty()) {
                return;
            }
            final com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) this.f55901c.get(((C4516j1) arrayList.get(0)).getReference());
            boolean z10 = f55898d;
            if (!z10) {
                Stream<E> stream = arrayList.stream();
                final ConcurrentHashMap concurrentHashMap2 = this.f55901c;
                if (!stream.allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean g10;
                        g10 = com.android.tools.r8.graph.L2.this.g((com.android.tools.r8.graph.L2) concurrentHashMap2.get(((C4516j1) obj).getReference()));
                        return g10;
                    }
                })) {
                    throw new AssertionError();
                }
            }
            if (l22 != null) {
                if (!z10 && l22.g(((C4516j1) arrayList.get(0)).C0())) {
                    throw new AssertionError();
                }
                this.f55901c.put(a22, l22);
            }
        }
    }
}
