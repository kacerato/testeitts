package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public class C5480Ky {
    public static Object a(Object obj, Object obj2) {
        return obj;
    }

    public static Object a(Object obj, Object obj2, Object obj3) {
        return obj;
    }

    public static Object a(com.android.tools.r8.graph.J2 j22, Function function) {
        if (j22 != null) {
            return function.apply(j22);
        }
        return null;
    }

    public static void a(Iterable iterable, Function function, Object obj) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ((Consumer) function.apply(it.next())).accept(obj);
        }
    }

    public static <T, R> Function<T, R> a(final Supplier<R> supplier) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                Object obj2;
                obj2 = Supplier.this.get();
                return obj2;
            }
        };
    }
}
