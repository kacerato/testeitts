package com.android.tools.r8.internal;

import java.util.function.BiPredicate;

public abstract class AbstractC7500gv implements BiPredicate {
    public abstract int a(Object obj);

    public abstract boolean a(Object obj, Object obj2);

    public final boolean b(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return a(obj, obj2);
    }

    @Override
    public final boolean test(Object obj, Object obj2) {
        return b(obj, obj2);
    }
}
