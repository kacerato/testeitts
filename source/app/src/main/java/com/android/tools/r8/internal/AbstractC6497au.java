package com.android.tools.r8.internal;

import java.util.function.Predicate;

public abstract class AbstractC6497au {
    public static void a(VJ vj2, int i10, C7215fB c7215fB, EE ee2, C8570nJ c8570nJ) {
        if (vj2.b(i10).d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC6497au.a((AbstractC10561zE) obj);
            }
        })) {
            ee2.previous();
            vj2.a(i10, ee2.a(c7215fB, c8570nJ));
            ee2.next();
        }
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C8769oZ) && abstractC10561zE.t0().u2() == 0;
    }
}
