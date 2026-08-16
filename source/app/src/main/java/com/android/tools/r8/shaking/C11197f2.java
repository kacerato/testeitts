package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.internal.C8570nJ;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C11197f2 {

    public final C8570nJ f57274a;

    public final ArrayList f57275b = new ArrayList();

    public C11197f2(C8570nJ c8570nJ) {
        this.f57274a = c8570nJ;
    }

    public final AbstractC4780x0 a(C4765w4 c4765w4) {
        Set<com.android.tools.r8.graph.M2> i10 = this.f57274a.x().a().i();
        Set<com.android.tools.r8.graph.M2> o10 = this.f57274a.x().a().f53766c.g().o();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        boolean z10 = false;
        for (com.android.tools.r8.graph.H2 h22 : c4765w4.d()) {
            identityHashMap.put(h22.f36245e, h22);
            if (!this.f57274a.x().b().a(h22.f36245e) && !o10.contains(h22.f36245e) && !i10.contains(h22.f36245e)) {
                z10 |= h22.q1();
                this.f57275b.add(h22.f36245e);
            } else {
                arrayList.add(h22);
            }
        }
        if (z10) {
            int size = arrayList.size();
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                V4.b((com.android.tools.r8.graph.H2) obj, new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return C11197f2.this.a((com.android.tools.r8.graph.M2) obj2);
                    }
                }, new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return (com.android.tools.r8.graph.E0) Map.this.get((com.android.tools.r8.graph.M2) obj2);
                    }
                });
            }
        }
        identityHashMap.clear();
        return new C4765w4.a(c4765w4).a(arrayList).b();
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return !this.f57275b.contains(m22);
    }
}
