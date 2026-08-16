package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

@A
@v2.c
public final class C12627q {
    public static <V> AtomicReference<V> a() {
        return new AtomicReference<>();
    }

    public static <V> AtomicReference<V> b(@InterfaceC12618j0 V v10) {
        return new AtomicReference<>(v10);
    }

    public static <E> AtomicReferenceArray<E> c(int i10) {
        return new AtomicReferenceArray<>(i10);
    }

    public static <E> AtomicReferenceArray<E> d(E[] eArr) {
        return new AtomicReferenceArray<>(eArr);
    }
}
