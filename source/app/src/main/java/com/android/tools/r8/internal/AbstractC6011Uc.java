package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC6011Uc {
    public static int a(C4798y c4798y, C7215fB c7215fB) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        Set c10 = AbstractC5513Ll0.c();
        boolean z10 = false;
        for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
            if (abstractC10561zE.o1()) {
                T3 A10 = abstractC10561zE.A();
                if (!A10.u2().i().d(new YW0()) || A10.a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                    return 1;
                }
            } else if (abstractC10561zE.a2() || (abstractC10561zE instanceof C8769oZ) || abstractC10561zE.b2()) {
                if (abstractC10561zE.a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                    return 1;
                }
            } else if (abstractC10561zE.e()) {
                C5634No0 L02 = abstractC10561zE.L0();
                C4460g1 q10 = ((C11245i) c4798y.f()).c(L02.getField()).q();
                if (q10 == null || q10.B0() != j10.p() || abstractC10561zE.a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                    return 1;
                }
                c10.add(L02.value());
                z10 = true;
            } else if (abstractC10561zE.a(c4798y.b())) {
                if (abstractC10561zE.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53980c)) {
                    return 1;
                }
            } else if (abstractC10561zE.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                return 1;
            }
        }
        if (z10) {
            Objects.requireNonNull(c10);
            if (c7215fB.a((Consumer) new XE0(c10))) {
                return 1;
            }
        }
        if (c10.isEmpty()) {
            return 3;
        }
        return new C5303Hw0(c4798y, c7215fB).a(c10) ? 1 : 2;
    }
}
