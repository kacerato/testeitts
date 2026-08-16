package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.BiPredicate;

public final class B extends C implements Cloneable {

    public final Q0 f55572d;

    public final C10968m0 f55573e;

    public final BiPredicate f55574f;

    public B(C4798y c4798y, C10968m0 c10968m0) {
        this(c4798y, c10968m0, new Q0(c4798y), new IdentityHashMap());
    }

    public static boolean a(Q0 q02, com.android.tools.r8.graph.L2 l22, F5 f52) {
        com.android.tools.r8.graph.L2 l23;
        boolean z10;
        com.android.tools.r8.graph.M2 m22 = f52.getReference().f37449i;
        P0 p02 = (P0) q02.f55582c.get(q02.f55581b.b().f37905M1);
        com.android.tools.r8.graph.L2 l24 = null;
        if (p02 == null) {
            l23 = null;
        } else {
            l23 = (com.android.tools.r8.graph.L2) p02.f55728a.get(l22);
            if (l23 == null) {
                l23 = (com.android.tools.r8.graph.L2) p02.f55728a.get(l22);
            }
        }
        if (l23 == null) {
            Q0 q03 = q02.f55733d;
            if (q03 != null) {
                P0 p03 = (P0) q03.f55582c.get(q03.f55581b.b().f37905M1);
                if (p03 != null) {
                    l23 = (com.android.tools.r8.graph.L2) p03.f55728a.get(l22);
                    if (l23 == null) {
                        l23 = (com.android.tools.r8.graph.L2) p03.f55728a.get(l22);
                    }
                }
            }
            l23 = null;
        }
        if (l23 == null) {
            Q0 q04 = q02.f55733d;
            if (q04 != null) {
                P0 p04 = (P0) q04.f55582c.get(q04.f55581b.b().f37905M1);
                if (p04 != null && (l24 = (com.android.tools.r8.graph.L2) p04.f55728a.get(l22)) == null) {
                    l24 = (com.android.tools.r8.graph.L2) p04.f55728a.get(l22);
                }
            }
            if (l24 == null) {
                z10 = false;
                return !z10;
            }
        }
        z10 = true;
        return !z10;
    }

    public final Object clone() {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (Map.Entry entry : this.f55582c.entrySet()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) entry.getKey();
            A a10 = (A) entry.getValue();
            identityHashMap.put(m22, new A(a10.f55566d, a10.f55565c, a10.f55564b));
        }
        return new B(this.f55581b, this.f55573e, this.f55572d, identityHashMap);
    }

    public B(C4798y c4798y, C10968m0 c10968m0, final Q0 q02, IdentityHashMap identityHashMap) {
        super(c4798y, identityHashMap);
        this.f55572d = q02;
        this.f55573e = c10968m0;
        this.f55574f = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return B.a(Q0.this, (com.android.tools.r8.graph.L2) obj, (F5) obj2);
            }
        };
    }

    @Override
    public final Object a() {
        return new A(this);
    }
}
