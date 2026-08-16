package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public final class C7435gZ {

    public static final boolean f48281d = true;

    public final com.android.tools.r8.graph.E0 f48282a;

    public final ArrayList f48283b;

    public final ArrayList f48284c;

    public C7435gZ(com.android.tools.r8.graph.E0 e02, ArrayList arrayList, ArrayList arrayList2) {
        this.f48282a = e02;
        this.f48283b = arrayList;
        this.f48284c = arrayList2;
    }

    public static C7435gZ a(final C4798y c4798y, com.android.tools.r8.graph.E0 e02, Consumer consumer) {
        if (!f48281d && !e02.q1()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 g10 = e02.t1() ? e02 : c4798y.g(e02.T0());
        if (g10 == null) {
            if (consumer == null) {
                return null;
            }
            consumer.accept(e02);
            return null;
        }
        final ArrayList arrayList = new ArrayList(g10.V0().size());
        final ArrayList arrayList2 = new ArrayList();
        g10.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7435gZ.a(C4798y.this, arrayList, arrayList2, (com.android.tools.r8.graph.M2) obj);
            }
        });
        return new C7435gZ(g10, arrayList, arrayList2);
    }

    public final boolean b() {
        if (this.f48282a.f0()) {
            return true;
        }
        return JK.a(this.f48283b.iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.E0) obj).f0();
            }
        }) != -1;
    }

    public static void a(C4798y c4798y, List list, List list2, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
        if (g10 != null) {
            list.add(g10);
        } else {
            list2.add(m22);
        }
    }

    public final C9406sK a() {
        return new C9406sK(new C9239rK(this.f48283b, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((com.android.tools.r8.graph.E0) obj).n1();
            }
        }), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.E0) obj).k();
            }
        });
    }
}
