package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.function.Predicate;

public interface InterfaceC9372s70 extends ListIterator {
    default void d(Predicate predicate) {
        while (hasPrevious() && !predicate.test(previous())) {
        }
    }
}
