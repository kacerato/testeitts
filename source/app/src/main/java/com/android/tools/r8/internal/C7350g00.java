package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Predicate;

public final class C7350g00 extends AbstractC10436yY {

    public final C4798y f48163b;

    public final com.android.tools.r8.shaking.L4 f48164c;

    public final C6012Uc0 f48165d = new C6012Uc0();

    public C7350g00(C4798y c4798y, com.android.tools.r8.shaking.L4 l42) {
        this.f48163b = c4798y;
        this.f48164c = l42;
    }

    @Override
    public final com.android.tools.r8.graph.O2 a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.O2 R02 = h22.R0();
        com.android.tools.r8.graph.M2[] m2Arr = (com.android.tools.r8.graph.M2[]) X3.a(R02.f36675b, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7350g00.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, com.android.tools.r8.graph.M2.f36589h);
        if (m2Arr != R02.f36675b) {
            R02 = m2Arr.length == 0 ? com.android.tools.r8.graph.O2.k0() : new com.android.tools.r8.graph.O2(m2Arr);
        }
        com.android.tools.r8.graph.M2[] m2Arr2 = R02.f36675b;
        if (m2Arr2.length <= 1) {
            return R02;
        }
        com.android.tools.r8.graph.M2[] m2Arr3 = (com.android.tools.r8.graph.M2[]) m2Arr2.clone();
        Arrays.sort(m2Arr3);
        return new com.android.tools.r8.graph.O2(m2Arr3);
    }

    @Override
    public final String f() {
        return "NoIndirectRuntimeTypeChecks";
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        if (this.f48165d.containsKey(m22)) {
            return this.f48165d.a(m22);
        }
        com.android.tools.r8.graph.E0 g10 = this.f48163b.g(m22);
        if (g10 != null && g10.isInterface()) {
            if (!g10.e0()) {
                this.f48165d.a(m22, true);
                return true;
            }
            com.android.tools.r8.shaking.L4 l42 = this.f48164c;
            if (l42 != null) {
                com.android.tools.r8.graph.H2 d02 = g10.d0();
                if (!l42.f56698a.contains(d02.f36245e) && !l42.f56699b.contains(d02.f36245e) && !l42.f56700c.contains(d02.f36245e)) {
                    if (g10.c1()) {
                        C4516j1 L02 = g10.L0();
                        L02.L0();
                        if (L02.f37320m.C() && g10.b0().b(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return C7350g00.a((C4516j1) obj);
                            }
                        })) {
                            this.f48165d.a(m22, true);
                            return true;
                        }
                    }
                    Iterator<com.android.tools.r8.graph.M2> it = g10.R0().iterator();
                    while (it.hasNext()) {
                        if (a(it.next())) {
                            this.f48165d.a(m22, true);
                            return true;
                        }
                    }
                    return false;
                }
            }
            this.f48165d.a(m22, true);
            return true;
        }
        this.f48165d.a(m22, true);
        return true;
    }

    public static boolean a(C4516j1 c4516j1) {
        return !c4516j1.d1();
    }
}
