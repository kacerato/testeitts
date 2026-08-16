package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4462g3;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;

public final class C8441mb0 {

    public final LinkedHashSet f50338a = new LinkedHashSet();

    public final LinkedHashSet f50339b = new LinkedHashSet();

    public static C8441mb0 a(final C4462g3 c4462g3) {
        final C8441mb0 c8441mb0 = new C8441mb0();
        C7608hb0 c7608hb0 = c4462g3.f38366d.f50593D1;
        for (com.android.tools.r8.graph.H2 h22 : c4462g3.d()) {
            C8107kb0 c8107kb0 = c7608hb0.f48615b;
            c8107kb0.getClass();
            com.android.tools.r8.graph.L2 v02 = h22.getType().v0();
            ArrayList arrayList = c8107kb0.f49688a;
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    break;
                }
                Object obj = arrayList.get(i11);
                i11++;
                if (((InterfaceC7940jb0) obj).test(v02)) {
                    C8107kb0 c8107kb02 = c7608hb0.f48616c;
                    c8107kb02.getClass();
                    com.android.tools.r8.graph.L2 v03 = h22.getType().v0();
                    ArrayList arrayList2 = c8107kb02.f49688a;
                    int size2 = arrayList2.size();
                    while (i10 < size2) {
                        Object obj2 = arrayList2.get(i10);
                        i10++;
                        if (((InterfaceC7940jb0) obj2).test(v03)) {
                        }
                    }
                    c8441mb0.f50339b.add(h22);
                }
            }
            c8441mb0.f50338a.add(h22);
        }
        LinkedHashSet linkedHashSet = c8441mb0.f50338a;
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) linkedHashSet);
        c6286Yx0.a(new Consumer() {
            @Override
            public final void accept(Object obj3) {
                ((com.android.tools.r8.graph.E0) obj3).a(C4462g3.this, new BiPredicate() {
                    @Override
                    public final boolean test(Object obj4, Object obj5) {
                        return C8441mb0.a((com.android.tools.r8.graph.M2) obj4, (com.android.tools.r8.graph.E0) obj5);
                    }
                }, new BiConsumer() {
                    @Override
                    public final void accept(Object obj4, Object obj5) {
                        C8441mb0.a(C8441mb0.this, r2, (com.android.tools.r8.graph.M2) obj4, (com.android.tools.r8.graph.E0) obj5);
                    }
                });
            }
        });
        return c8441mb0;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        return (e02 == null || e02.f0()) ? false : true;
    }

    public static void a(C8441mb0 c8441mb0, C6286Yx0 c6286Yx0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        if (e02.e0() && c8441mb0.f50339b.remove(e02.d0())) {
            c8441mb0.f50338a.add(e02.d0());
        }
        c6286Yx0.b((C6286Yx0) e02);
    }
}
