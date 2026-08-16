package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C9933vX;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;

public final class C10928e0 extends AbstractC10918c0 {

    public final C10928e0 f55872c;

    public C10928e0(C10928e0 c10928e0, Function function) {
        super(function);
        this.f55872c = c10928e0;
    }

    public final void a(com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.L2 l22) {
        try {
            ((C10923d0) c(h02.getReference())).a(h02, l22);
        } catch (AssertionError e10) {
            throw new RuntimeException(String.format("Assertion error when trying to reserve name '%s' for method '%s'", l22, h02), e10);
        }
    }

    public final Set d(com.android.tools.r8.graph.A2 a22) {
        C10928e0 c10928e0;
        HashMap hashMap;
        C10923d0 c10923d0 = (C10923d0) b(a22);
        Set set = null;
        if (c10923d0 != null && (hashMap = c10923d0.f55857a) != null) {
            set = (Set) hashMap.get(new C7333fv(C9933vX.f53136a, a22));
        }
        return (set != null || (c10928e0 = this.f55872c) == null) ? set : c10928e0.d(a22);
    }

    public final boolean a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.A2 a22) {
        HashSet hashSet;
        C10923d0 c10923d0 = (C10923d0) b(a22);
        if (c10923d0 != null && (hashSet = c10923d0.f55858b) != null && hashSet.contains(l22)) {
            return true;
        }
        C10928e0 c10928e0 = this.f55872c;
        if (c10928e0 != null) {
            return c10928e0.a(l22, a22);
        }
        return false;
    }

    @Override
    public final Object a(com.android.tools.r8.graph.A2 a22) {
        return new C10923d0();
    }
}
