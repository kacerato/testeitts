package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C9933vX;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;

public final class C10923d0 {

    public static final boolean f55856c = true;

    public HashMap f55857a = null;

    public HashSet f55858b = null;

    public final void a(com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.L2 l22) {
        if (this.f55858b == null) {
            if (!f55856c && this.f55857a != null) {
                throw new AssertionError();
            }
            this.f55857a = new HashMap();
            this.f55858b = new HashSet();
        }
        ((Set) this.f55857a.computeIfAbsent(new C7333fv(C9933vX.f53136a, h02.getReference()), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10923d0.a((C7333fv) obj);
            }
        })).add(l22);
        this.f55858b.add(l22);
    }

    public static Set a(C7333fv c7333fv) {
        return new HashSet();
    }
}
