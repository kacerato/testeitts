package com.android.tools.r8.internal;

import java.util.function.Predicate;

public interface V60 extends Predicate {
    boolean apply(Object obj);

    boolean equals(Object obj);

    @Override
    default boolean test(Object obj) {
        return apply(obj);
    }
}
