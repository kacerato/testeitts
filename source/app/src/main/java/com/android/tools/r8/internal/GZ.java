package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.Predicate;

public interface GZ<T> extends Iterator<T> {
    default <S extends T> S a(Predicate<T> predicate) {
        while (hasNext()) {
            T next = next();
            if (predicate.test(next)) {
                return next;
            }
        }
        return null;
    }
}
