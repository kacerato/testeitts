package com.android.tools.r8.internal;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public class C6628bi {
    public static void a(Object obj) {
    }

    public static void b(Object obj) {
    }

    public static <T> InterfaceC6160Wr0<T, RuntimeException> c() {
        return new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C6628bi.b(obj);
            }
        };
    }

    public static void a(Object obj, Object obj2) {
    }

    public static <T> Consumer<T> b() {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6628bi.a(obj);
            }
        };
    }

    public static Consumer a(final Consumer consumer, final Set set) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6628bi.a(Set.this, consumer, obj);
            }
        };
    }

    public static void a(Set set, Consumer consumer, Object obj) {
        if (set.add(obj)) {
            consumer.accept(obj);
        }
    }

    public static BiConsumer a(final BiFunction biFunction, final Consumer consumer) {
        return new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept(biFunction.apply(obj, obj2));
            }
        };
    }

    public static BiConsumer a() {
        return new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6628bi.a(obj, obj2);
            }
        };
    }
}
