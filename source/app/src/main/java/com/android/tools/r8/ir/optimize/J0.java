package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.internal.GG;
import com.android.tools.r8.shaking.C11245i;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public final class J0 {

    public final C4798y f54763a;

    public final L2 f54764b;

    public final L2 f54765c;

    public final M2 f54766d;

    public final IdentityHashMap f54767e = new IdentityHashMap();

    public J0(C4798y c4798y) {
        this.f54763a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f54764b = b10.b("$SwitchMap$");
        this.f54765c = b10.b("$EnumSwitchMapping$");
        this.f54766d = b10.f37947S1;
    }

    public final C11245i a() {
        Iterator<H2> it = ((C11245i) this.f54763a.f()).d().iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        if (!this.f54767e.isEmpty()) {
            C11245i c11245i = (C11245i) this.f54763a.f();
            IdentityHashMap identityHashMap = this.f54767e;
            boolean z10 = C11245i.f57385J;
            if (!z10) {
                c11245i.c();
            }
            if (!z10) {
                if (!c11245i.f57392G.isEmpty()) {
                    throw new AssertionError();
                }
            } else {
                c11245i.getClass();
            }
            return new C11245i(c11245i, identityHashMap);
        }
        return (C11245i) this.f54763a.f();
    }

    public final void a(H2 h22) {
        if (h22.f36246f.o() && h22.c1()) {
            List list = (List) h22.A1().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.ir.optimize.J0.this.a((C4460g1) obj);
                }
            }).collect(Collectors.toList());
            if (list.isEmpty()) {
                return;
            }
            final C7215fB a10 = h22.h(h22.L0()).a(this.f54763a, EW.d());
            list.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.ir.optimize.J0.this.b(a10, (C4460g1) obj);
                }
            });
        }
    }

    public final void b(C7215fB c7215fB, C4460g1 c4460g1) {
        AbstractC10561zE abstractC10561zE;
        final C4554l1 reference = c4460g1.getReference();
        GG gg2 = new GG();
        for (AbstractC10561zE abstractC10561zE2 : c7215fB.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return com.android.tools.r8.ir.optimize.J0.a(C4554l1.this, (AbstractC10561zE) obj);
            }
        })) {
            abstractC10561zE2.getClass();
            for (AbstractC10561zE abstractC10561zE3 : (abstractC10561zE2 instanceof C5576Mo0 ? abstractC10561zE2.d() : abstractC10561zE2.L0().value()).b0()) {
                if (abstractC10561zE3.o1()) {
                    AbstractC10561zE abstractC10561zE4 = abstractC10561zE3.A().value().f53886c;
                    if (abstractC10561zE4 == null || !abstractC10561zE4.w1()) {
                        return;
                    }
                    int u22 = abstractC10561zE4.J().u2();
                    AbstractC10561zE abstractC10561zE5 = ((C10340xw0) abstractC10561zE3.A().f54321f.get(1)).f53886c;
                    if (abstractC10561zE5 == null || !abstractC10561zE5.T1()) {
                        return;
                    }
                    C8405mK k02 = abstractC10561zE5.k0();
                    com.android.tools.r8.graph.E0 g10 = this.f54763a.g(k02.B2().f38297f);
                    if (g10 == null) {
                        return;
                    }
                    if ((!g10.f36246f.I() && g10.f36245e != this.f54763a.b().f38108n2) || (abstractC10561zE = ((C10340xw0) k02.f54321f.get(0)).f53886c) == null || !(abstractC10561zE instanceof C5576Mo0)) {
                        return;
                    }
                    C4554l1 field = abstractC10561zE.K0().getField();
                    com.android.tools.r8.graph.E0 g11 = this.f54763a.g(field.f38297f);
                    if (g11 == null || !g11.f36246f.I() || gg2.a(u22, field) != null) {
                        return;
                    }
                } else if (abstractC10561zE3 != abstractC10561zE2) {
                    return;
                }
            }
        }
        this.f54767e.put(reference, gg2);
    }

    public static boolean a(C4554l1 c4554l1, AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return ((abstractC10561zE instanceof C5576Mo0) || abstractC10561zE.e()) && abstractC10561zE.S().getField() == c4554l1;
    }

    public final boolean a(C4460g1 c4460g1) {
        C4554l1 reference = c4460g1.getReference();
        if (!c4460g1.f37202g.o()) {
            return false;
        }
        L2 l22 = reference.f38298g;
        L2 l23 = this.f54764b;
        l22.getClass();
        if (!l22.b(l23.f36562f)) {
            L2 l24 = reference.f38298g;
            L2 l25 = this.f54765c;
            l24.getClass();
            if (!l24.b(l25.f36562f)) {
                return false;
            }
        }
        return reference.f37449i == this.f54766d;
    }
}
