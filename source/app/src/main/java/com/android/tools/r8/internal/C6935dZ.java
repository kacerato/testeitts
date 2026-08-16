package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C6935dZ extends D40 implements Serializable {

    public static final C6935dZ f47416b = new C6935dZ();

    @Override
    public final D40 a() {
        return C4873Ak0.f38705b;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
