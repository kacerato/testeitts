package com.android.apksig.internal.compat;

@FunctionalInterface
public interface SupplierCompat<T> {
    T get();
}
