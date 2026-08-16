package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class AbstractC5663Oc {

    public static final boolean f42934a = true;

    public static boolean a(AbstractC7670hw abstractC7670hw, com.android.tools.r8.graph.M2 m22, C4798y c4798y, int i10, int i11) {
        C10340xw0 n10;
        if (!f42934a && !(abstractC7670hw instanceof C6558bE) && !abstractC7670hw.i()) {
            throw new AssertionError();
        }
        if (i11 == 2) {
            if (abstractC7670hw instanceof C6558bE) {
                n10 = abstractC7670hw.c().n();
            } else {
                n10 = abstractC7670hw.m().n();
            }
            if (n10.u().v()) {
                return false;
            }
        }
        C4460g1 q10 = ((C11245i) c4798y.f()).c(abstractC7670hw.getField()).q();
        return q10 != null && a(abstractC7670hw, m22, q10, c4798y, i10);
    }

    public static boolean b(AbstractC7670hw abstractC7670hw, com.android.tools.r8.graph.M2 m22, C4798y c4798y, int i10, int i11) {
        C4460g1 q10;
        if (f42934a || (abstractC7670hw instanceof C5576Mo0) || abstractC7670hw.e()) {
            return (i11 == 2 || (q10 = ((C11245i) c4798y.f()).c(abstractC7670hw.getField()).q()) == null || !a(abstractC7670hw, m22, q10, c4798y, i10)) ? false : true;
        }
        throw new AssertionError();
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, com.android.tools.r8.graph.M2 m22, AbstractC4365b1 abstractC4365b1, C4798y c4798y, int i10) {
        C4516j1 L02;
        if (i10 == 1) {
            if (abstractC4365b1.s0()) {
                return abstractC4365b1.l0().f36245e == m22;
            }
            if (abstractC4365b1.u0()) {
                return abstractC4365b1.n0().getReference().f38297f == m22;
            }
            throw new C5417Jv0();
        }
        Set c10 = AbstractC5513Ll0.c();
        ArrayDeque arrayDeque = new ArrayDeque();
        if (abstractC4365b1.s0()) {
            a(abstractC4365b1.l0().f36245e, c10, arrayDeque);
        } else if (abstractC4365b1 instanceof C4460g1) {
            a(abstractC4365b1.m0().B0(), c10, arrayDeque);
        } else if (abstractC4365b1.v0()) {
            if (!f42934a && !abstractC10561zE.P1()) {
                throw new AssertionError();
            }
            C4516j1 o02 = abstractC4365b1.o0();
            a(o02.B0(), c10, arrayDeque);
            a(o02, abstractC10561zE.f54321f, c10, arrayDeque);
        } else if (!f42934a) {
            throw new AssertionError();
        }
        while (!arrayDeque.isEmpty()) {
            com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) arrayDeque.removeFirst();
            if (!f42934a && !c10.contains(m23)) {
                throw new AssertionError();
            }
            if (c4798y.a(m23, m22).d()) {
                return true;
            }
            com.android.tools.r8.graph.E0 g10 = c4798y.g(m23);
            if (g10 != null && (L02 = g10.L0()) != null) {
                int i11 = AbstractC7552hC.f48487c;
                a(L02, C6190Xe0.f45779e, c10, arrayDeque);
            }
        }
        return false;
    }

    public static void a(com.android.tools.r8.graph.M2 m22, Set set, ArrayDeque arrayDeque) {
        if (m22.I0() && set.add(m22)) {
            arrayDeque.add(m22);
        }
    }

    public static void a(C4516j1 c4516j1, List list, Set set, ArrayDeque arrayDeque) {
        c4516j1.L0();
        Iterator it = c4516j1.f37320m.p().iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.M2) it.next(), set, arrayDeque);
        }
        if (!c4516j1.w0()) {
            if (!f42934a && list.size() <= 0) {
                throw new AssertionError();
            }
            AbstractC8999pu0 u10 = ((C10340xw0) list.get(0)).u();
            if (u10.s()) {
                a(u10.b().E(), set, arrayDeque);
            }
        }
        c4516j1.L0();
        BitSet s10 = c4516j1.f37320m.s();
        if (s10 != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (s10.get(i10)) {
                    AbstractC8999pu0 u11 = ((C10340xw0) list.get(i10)).u();
                    if (u11.s()) {
                        a(u11.b().E(), set, arrayDeque);
                    }
                }
            }
        }
    }
}
