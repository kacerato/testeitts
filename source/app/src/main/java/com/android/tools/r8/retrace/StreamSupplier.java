package com.android.tools.r8.retrace;

import java.lang.Throwable;

@FunctionalInterface
public interface StreamSupplier<E extends Throwable> {
    String getNext() throws Throwable;
}
