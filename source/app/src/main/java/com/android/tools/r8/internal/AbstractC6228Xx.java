package com.android.tools.r8.internal;

import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC6228Xx {
    public static boolean a(Consumer consumer, final Predicate predicate) {
        final U6 u62 = new U6(true);
        consumer.accept(new Consumer() {
            @Override
            public final void accept(Object obj) {
                U6.this.a(predicate.test(obj));
            }
        });
        return u62.d();
    }
}
