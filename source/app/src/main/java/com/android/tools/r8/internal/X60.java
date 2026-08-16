package com.android.tools.r8.internal;

import java.util.function.Function;
import java.util.function.Predicate;

public class X60 {
    public static Object a(Object[] objArr, Predicate predicate) {
        for (Object obj : objArr) {
            if (predicate.test(obj)) {
                return obj;
            }
        }
        return null;
    }

    public static boolean a(Predicate predicate, Object obj) {
        return !predicate.test(obj);
    }

    public static <T> Predicate<T> a(final Predicate<T> predicate) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return X60.a(Predicate.this, obj);
            }
        };
    }

    public static Predicate a(final Function function) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return X60.a(Function.this, obj);
            }
        };
    }

    public static boolean a(Function function, Object obj) {
        return function.apply(obj) == null;
    }
}
