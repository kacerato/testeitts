package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import java.util.Collection;
import java.util.List;
import java.util.function.Predicate;

public final class JV {

    public final C10957k.c f41409a;

    public final com.android.tools.r8.naming.V f41410b;

    public JV(com.android.tools.r8.naming.V v10, C10957k.c cVar) {
        this.f41410b = v10;
        this.f41409a = cVar;
    }

    public static boolean a(C10957k.b bVar) {
        return bVar.f55969b == null;
    }

    public final List b() {
        return AT.a((Collection) this.f41409a.a(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return JV.a((C10957k.b) obj);
            }
        });
    }

    public final List a() {
        return this.f41409a.a(0, true);
    }
}
