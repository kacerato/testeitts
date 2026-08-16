package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

public final class C5669Oe implements Spliterator {

    public final Spliterator.OfInt f42940a;

    public final IntFunction f42941b;

    public final int f42942c;

    public final Comparator f42943d;

    public C5669Oe(Spliterator.OfInt ofInt, IntFunction intFunction, int i10, Comparator comparator) {
        this.f42941b = intFunction;
        this.f42942c = i10;
        this.f42943d = comparator;
        this.f42940a = ofInt;
    }

    @Override
    public final int characteristics() {
        return this.f42942c | 16464;
    }

    @Override
    public final long estimateSize() {
        return this.f42940a.estimateSize();
    }

    @Override
    public final void forEachRemaining(final Consumer consumer) {
        Spliterator.OfInt ofInt = this.f42940a;
        final IntFunction intFunction = this.f42941b;
        ofInt.forEachRemaining(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                Consumer.this.accept(intFunction.apply(i10));
            }
        });
    }

    @Override
    public final Comparator getComparator() {
        if (hasCharacteristics(4)) {
            return this.f42943d;
        }
        throw new IllegalStateException();
    }

    @Override
    public final boolean tryAdvance(final Consumer consumer) {
        Spliterator.OfInt ofInt = this.f42940a;
        final IntFunction intFunction = this.f42941b;
        return ofInt.tryAdvance(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                Consumer.this.accept(intFunction.apply(i10));
            }
        });
    }

    @Override
    public final Spliterator trySplit() {
        Spliterator.OfInt trySplit = this.f42940a.trySplit();
        if (trySplit == null) {
            return null;
        }
        return new C5669Oe(trySplit, this.f42941b, this.f42942c, this.f42943d);
    }
}
