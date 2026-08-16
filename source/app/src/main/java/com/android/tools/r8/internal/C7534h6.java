package com.android.tools.r8.internal;

import java.util.function.BiPredicate;

public class C7534h6 {
    public static boolean a(Object obj, Object obj2) {
        return false;
    }

    public static boolean b(Object obj, Object obj2) {
        return true;
    }

    public static <S, T> BiPredicate<S, T> a() {
        return new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C7534h6.a(obj, obj2);
            }
        };
    }

    public static <S, T> BiPredicate<S, T> b() {
        return new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C7534h6.b(obj, obj2);
            }
        };
    }
}
