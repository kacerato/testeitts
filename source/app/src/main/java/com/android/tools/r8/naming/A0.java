package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C7045eA;
import com.android.tools.r8.shaking.C11245i;
import java.util.HashSet;
import java.util.function.Predicate;

public final class A0 extends C10953j0 {

    public static final boolean f55567i = true;

    public final C7045eA f55568g;

    public final HashSet f55569h;

    public A0(C4798y c4798y, C7045eA c7045eA, HashSet hashSet) {
        super(c4798y);
        this.f55568g = c7045eA;
        this.f55569h = hashSet;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22, char[] cArr, C10927e c10927e, final Predicate predicate) {
        boolean z10 = f55567i;
        if (!z10 && this.f55568g.containsKey(m22)) {
            throw new AssertionError();
        }
        if (!z10) {
            C4798y c4798y = this.f55941e;
            if (!c4798y.r().a(c4798y.g(m22).d0()).b(this.f55941e.E())) {
                throw new AssertionError();
            }
        }
        return super.a(m22, cArr, c10927e, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return A0.this.a(predicate, (String) obj);
            }
        });
    }

    @Override
    public final com.android.tools.r8.graph.L2 b(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 c10 = ((C11245i) this.f55941e.f()).c(m22);
        if (c10 == null) {
            return m22.v0();
        }
        if (c10.e0()) {
            if (this.f55941e.r().a(c10.d0()).b(this.f55941e.E())) {
                return (com.android.tools.r8.graph.L2) this.f55568g.get(m22);
            }
        } else if (this.f55568g.containsKey(m22)) {
            return (com.android.tools.r8.graph.L2) this.f55568g.get(m22);
        }
        return m22.v0();
    }

    public final boolean a(Predicate predicate, String str) {
        if (this.f55569h.contains(str)) {
            return true;
        }
        return predicate.test(str);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return this.f55568g.containsKey(m22);
    }
}
