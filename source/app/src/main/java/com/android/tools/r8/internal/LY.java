package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;

public interface LY extends Collection {
    int a(Object obj);

    int a(Object obj, int i10);

    boolean a(int i10, Object obj);

    int b(int i10, Object obj);

    int b(Object obj);

    Set entrySet();

    @Override
    default void forEach(final Consumer consumer) {
        consumer.getClass();
        entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                LY.a(Consumer.this, (MY) obj);
            }
        });
    }

    @Override
    int hashCode();

    @Override
    default Spliterator spliterator() {
        return QY.a(this);
    }

    Set w();

    static void a(Consumer consumer, MY my) {
        Object b10 = my.b();
        int a10 = my.a();
        for (int i10 = 0; i10 < a10; i10++) {
            consumer.accept(b10);
        }
    }

    default void a(final ObjIntConsumer objIntConsumer) {
        objIntConsumer.getClass();
        entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ObjIntConsumer.this.accept(r2.b(), ((MY) obj).a());
            }
        });
    }
}
