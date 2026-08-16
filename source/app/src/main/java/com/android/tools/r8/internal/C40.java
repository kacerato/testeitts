package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C40;

public interface C40<T extends C40<T>> extends InterfaceC7166ev<T>, Comparable<T> {
    static {
        boolean z10 = B40.f38801a;
    }

    static <T extends C40<T>> T b(T t10, T t11) {
        return t10 == null ? t11 : (t11 != null && t10.b(t11)) ? t11 : t10;
    }

    static <T extends C40<T>> T c(T t10, T t11) {
        return t10 == null ? t11 : (t11 == null || t10.b(t11)) ? t10 : t11;
    }

    static <T extends C40<T>> T d(T t10, T t11) {
        return t10.b(t11) ? t11 : t10;
    }

    @Override
    default boolean isEqualTo(T t10) {
        if (B40.f38801a || t10 != null) {
            return this == t10 || compareTo((C40<T>) t10) == 0;
        }
        throw new AssertionError();
    }

    @Override
    int compareTo(T t10);

    default boolean e(T t10) {
        return compareTo((C40<T>) t10) <= 0;
    }

    default boolean b(T t10) {
        return compareTo((C40<T>) t10) < 0;
    }

    default boolean c(T t10) {
        return compareTo((C40<T>) t10) > 0;
    }

    default boolean d(T t10) {
        return compareTo((C40<T>) t10) >= 0;
    }

    default boolean a(T t10, T t11) {
        return d(t10) && e(t11);
    }
}
