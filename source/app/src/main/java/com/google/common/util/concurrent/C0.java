package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReferenceArray;

public final class C0 {
    public static boolean a(AtomicReferenceArray atomicReferenceArray, int i10, Object obj, Object obj2) {
        while (!atomicReferenceArray.compareAndSet(i10, obj, obj2)) {
            if (atomicReferenceArray.get(i10) != obj) {
                return false;
            }
        }
        return true;
    }
}
