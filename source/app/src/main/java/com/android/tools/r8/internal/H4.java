package com.android.tools.r8.internal;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public abstract class H4 {
    public static Function a(final Consumer consumer) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return H4.a(Consumer.this, obj);
            }
        };
    }

    public static Supplier b(final Runnable runnable) {
        return new Supplier() {
            @Override
            public final Object get() {
                return H4.a(Runnable.this);
            }
        };
    }

    public static Void a(Consumer consumer, Object obj) {
        consumer.accept(obj);
        return null;
    }

    public static Void a(Runnable runnable) {
        runnable.run();
        return null;
    }
}
