package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C4873Ak0 extends D40 implements Serializable {

    public static final C4873Ak0 f38705b = new C4873Ak0();

    @Override
    public final D40 a() {
        return C6935dZ.f47416b;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
