package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.O40;
import com.android.tools.r8.naming.C10957k;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Predicate;

public final class C10977o {

    public final IdentityHashMap f56020a = new IdentityHashMap();

    public final IdentityHashMap f56021b = new IdentityHashMap();

    public final C10972n a(final C10957k.b bVar, com.android.tools.r8.naming.mappinginformation.e eVar) {
        List list;
        eVar.getClass();
        if (eVar instanceof O40) {
            list = (List) this.f56021b.get(eVar.d());
        } else {
            list = (List) this.f56020a.get(eVar.c());
        }
        if (list == null) {
            return null;
        }
        int a10 = AT.a(list, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean a11;
                a11 = ((C10972n) obj).f56014b.f55969b.a(C10957k.b.this.f55969b.f55702a);
                return a11;
            }
        });
        return (C10972n) (a10 >= 0 ? list.get(a10) : null);
    }
}
