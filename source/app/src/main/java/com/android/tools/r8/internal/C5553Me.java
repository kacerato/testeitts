package com.android.tools.r8.internal;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C5553Me implements Spliterator {

    public final Spliterator f42335a;

    public final Function f42336b;

    public C5553Me(Spliterator spliterator, Function function) {
        this.f42335a = spliterator;
        this.f42336b = function;
    }

    @Override
    public final int characteristics() {
        return this.f42335a.characteristics() & (-262);
    }

    @Override
    public final long estimateSize() {
        return this.f42335a.estimateSize();
    }

    @Override
    public final void forEachRemaining(final Consumer consumer) {
        Spliterator spliterator = this.f42335a;
        final Function function = this.f42336b;
        spliterator.forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(function.apply(obj));
            }
        });
    }

    @Override
    public final boolean tryAdvance(final Consumer consumer) {
        Spliterator spliterator = this.f42335a;
        final Function function = this.f42336b;
        return spliterator.tryAdvance(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(function.apply(obj));
            }
        });
    }

    @Override
    public final Spliterator trySplit() {
        Spliterator trySplit = this.f42335a.trySplit();
        if (trySplit == null) {
            return null;
        }
        Function function = this.f42336b;
        function.getClass();
        return new C5553Me(trySplit, function);
    }
}
