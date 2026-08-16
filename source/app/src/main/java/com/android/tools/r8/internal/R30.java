package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public abstract class R30 {
    public static boolean a(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C8769oZ) || abstractC10561zE.b2() || abstractC10561zE.a2();
    }

    public static Q30 b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (!i10.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return R30.a((AbstractC10561zE) obj);
            }
        })) {
            return i10.d(new C7680hz0()) ? a(c4798y, h52, i10) : C6163Wt.f45565a;
        }
        F1 a10 = i10.f53886c.a(c4798y, h52, M1.f42128a);
        a10.getClass();
        return a10 instanceof C4997Co0 ? a10.Q().f39366b : C6163Wt.f45565a;
    }

    public static Q30 a(final C4798y c4798y, final com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        final QJ a10 = AbstractC7716iB.a(c4798y.b(), c10340xw0.f53886c.w0().d());
        if (a10 == null) {
            return C6163Wt.f45565a;
        }
        com.android.tools.r8.graph.H0 e10 = a10.e(c4798y, h52);
        if (e10 == null) {
            return C6163Wt.f45565a;
        }
        C4516j1 d10 = e10.d();
        d10.L0();
        UD b10 = d10.f37320m.a(a10).b();
        if (b10.a()) {
            return C6163Wt.f45565a;
        }
        final P30 p30 = new P30();
        b10.a(c4798y, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                R30.a(C4798y.this, a10, p30, h52, (com.android.tools.r8.graph.F0) obj, (SD) obj2);
            }
        });
        return p30.f43112a.isEmpty() ? C6163Wt.f45565a : new K00(p30.f43112a);
    }

    public static void a(C4798y c4798y, QJ qj2, P30 p30, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.F0 f02, SD sd2) {
        if (!((C11245i) c4798y.f()).c(f02)) {
            com.android.tools.r8.graph.J1 j12 = c4798y.b().f37943R4;
            C4554l1 reference = f02.getReference();
            if (reference != j12.f36482a && reference != j12.f36483b) {
                return;
            }
        }
        if (sd2.s()) {
            F1 a10 = qj2.b(sd2.q().f43848a).a(c4798y, h52, M1.f42128a);
            p30.getClass();
            if (a10.isUnknown()) {
                return;
            }
            if (!P30.f43111b && p30.f43112a.containsKey(f02.getReference())) {
                throw new AssertionError();
            }
            p30.f43112a.put(f02.getReference(), a10);
            return;
        }
        if (sd2.r()) {
            AbstractC5746Pm0 w10 = sd2.w();
            p30.getClass();
            if (w10.isUnknown()) {
                return;
            }
            if (!P30.f43111b && p30.f43112a.containsKey(f02.getReference())) {
                throw new AssertionError();
            }
            p30.f43112a.put(f02.getReference(), w10);
        }
    }
}
