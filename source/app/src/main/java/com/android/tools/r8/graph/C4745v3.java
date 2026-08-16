package com.android.tools.r8.graph;

import com.android.tools.r8.graph.D3;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.V60;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public final class C4745v3 {

    public static final boolean f38299b = true;

    public D3 f38300a = null;

    public final void a(D3 d32) {
        boolean z10 = f38299b;
        if (this.f38300a == null) {
            this.f38300a = d32;
            return;
        }
        final com.android.tools.r8.internal.C7 c72 = new com.android.tools.r8.internal.C7();
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        this.f38300a.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.internal.C7.this.a((com.android.tools.r8.internal.C7) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((E3) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((AbstractC4783x3) obj);
            }
        });
        d32.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4745v3.a(com.android.tools.r8.internal.C7.this, (D3.a) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4745v3.a(List.this, (E3) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4745v3.a(List.this, (AbstractC4783x3) obj);
            }
        });
        if (!c72.b()) {
            if (arrayList.size() == 1 && arrayList2.isEmpty()) {
                this.f38300a = (D3) arrayList.get(0);
                return;
            } else if (arrayList.isEmpty() && arrayList2.size() == 1) {
                this.f38300a = (D3) arrayList2.get(0);
                return;
            } else {
                this.f38300a = new A3(arrayList, arrayList2);
                return;
            }
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            this.f38300a = (D3) c72.a();
            return;
        }
        if (((D3.a) c72.a()).u()) {
            this.f38300a = new B3(((D3.a) c72.a()).m(), arrayList, arrayList2);
            return;
        }
        C3 k10 = ((D3.a) c72.a()).k();
        if (!z10 && k10 == null) {
            throw new AssertionError();
        }
        this.f38300a = new C4802y3(k10, arrayList, arrayList2);
    }

    public static void a(com.android.tools.r8.internal.C7 c72, D3.a aVar) {
        if (c72.b()) {
            if (f38299b) {
                if (((D3.a) c72.a()).u()) {
                    return;
                }
            } else {
                throw new AssertionError((Object) "Unexpected multiple results between program and classpath");
            }
        }
        c72.a((com.android.tools.r8.internal.C7) aVar);
    }

    public static void a(List list, final E3 e32) {
        if (AbstractC9907vK.b(list, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C4745v3.a(E3.this, (E3) obj);
            }
        })) {
            return;
        }
        list.add(e32);
    }

    public static boolean a(E3 e32, E3 e33) {
        return e33.d() == e32.d();
    }

    public static void a(List list, final AbstractC4783x3 abstractC4783x3) {
        if (AbstractC9907vK.b(list, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C4745v3.a(AbstractC4783x3.this, (AbstractC4783x3) obj);
            }
        })) {
            return;
        }
        list.add(abstractC4783x3);
    }

    public static boolean a(AbstractC4783x3 abstractC4783x3, AbstractC4783x3 abstractC4783x32) {
        return abstractC4783x32.h() == abstractC4783x3.h();
    }
}
