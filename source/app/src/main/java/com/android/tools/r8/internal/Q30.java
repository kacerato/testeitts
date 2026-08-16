package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public abstract class Q30 {
    public static Q30 b() {
        return C6163Wt.f45565a;
    }

    public abstract F1 a(C4554l1 c4554l1);

    public abstract Q30 a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2);

    public C6336Zu a() {
        return null;
    }

    public abstract void a(BiConsumer biConsumer);

    public int c() {
        throw new C5417Jv0();
    }

    public boolean d() {
        return this instanceof C6336Zu;
    }

    public abstract boolean e();

    public abstract boolean equals(Object obj);

    public abstract int hashCode();

    public final boolean a(C4798y c4798y, C4460g1 c4460g1, com.android.tools.r8.graph.H5 h52, Predicate predicate) {
        F1 a10 = a(c4460g1.getReference());
        if (!a10.r()) {
            return false;
        }
        AbstractC5746Pm0 w10 = a10.w();
        if (w10.b(c4798y, h52)) {
            return predicate.test(w10);
        }
        return false;
    }
}
