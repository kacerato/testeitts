package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Predicate;

public abstract class AbstractC8186l10 {
    public static AbstractC8186l10 a(C4798y c4798y, C7215fB c7215fB, R00 r00, final AbstractC5308Hz abstractC5308Hz) {
        R00 a10 = r00.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC8186l10.a(AbstractC5308Hz.this, (R00) obj);
            }
        });
        if (a10 != null && a10 != abstractC5308Hz && (a10 instanceof C9693u3)) {
            return new C8019k10(c4798y.M(), c7215fB, r00);
        }
        return new C7852j10();
    }

    public abstract void a();

    public abstract void a(VJ vj2, VJ vj3, NW nw);

    public static boolean a(AbstractC5308Hz abstractC5308Hz, R00 r00) {
        r00.getClass();
        return (r00 instanceof C9693u3) || r00 == abstractC5308Hz;
    }
}
