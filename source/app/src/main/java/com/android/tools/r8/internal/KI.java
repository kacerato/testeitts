package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Predicate;

public abstract class KI {
    public static KI a(C4798y c4798y, C7215fB c7215fB, R00 r00, final AbstractC5308Hz abstractC5308Hz) {
        R00 a10 = r00.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return KI.a(AbstractC5308Hz.this, (R00) obj);
            }
        });
        if (a10 != null && a10 != abstractC5308Hz && (a10 instanceof C6840cx0)) {
            return new MI(c4798y, c7215fB, r00, abstractC5308Hz);
        }
        return new C5933St();
    }

    public abstract void a();

    public abstract void a(VJ vj2, VJ vj3, NW nw, W5 w52);

    public abstract void a(InterfaceC10172ww interfaceC10172ww, InterfaceC10172ww interfaceC10172ww2, W5 w52);

    public abstract void a(C10471yk0 c10471yk0, W5 w52);

    public static boolean a(AbstractC5308Hz abstractC5308Hz, R00 r00) {
        r00.getClass();
        return (r00 instanceof C6840cx0) || r00 == abstractC5308Hz;
    }
}
