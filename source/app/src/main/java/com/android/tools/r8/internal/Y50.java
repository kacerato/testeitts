package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.C11416s2;
import java.util.Collection;
import java.util.List;
import java.util.function.Function;

public final class Y50 extends X50 {

    public static final boolean f45927e = true;

    public Y50(C11416s2 c11416s2, List list) {
        super(c11416s2, list);
        if (!f45927e && list.isEmpty()) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean a(Object obj, com.android.tools.r8.shaking.N n10) {
        com.android.tools.r8.graph.D5 d52 = (com.android.tools.r8.graph.D5) obj;
        if (d52.isClass()) {
            return n10.f56821w.f56875a.contains(d52.asClass());
        }
        if (d52.J()) {
            com.android.tools.r8.graph.F5 c10 = d52.c();
            com.android.tools.r8.shaking.L l10 = n10.f56775R;
            l10.getClass();
            return l10.f56689a.contains(c10.d());
        }
        if (!f45927e && !d52.I()) {
            throw new AssertionError();
        }
        return n10.f56774Q.f56716a.contains(d52.b().d());
    }

    @Override
    public final List a(List list) {
        return AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.D5) obj).getReference();
            }
        });
    }
}
