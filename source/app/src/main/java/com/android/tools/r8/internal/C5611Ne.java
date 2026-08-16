package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C5611Ne implements Spliterator, Consumer {

    public Object f42647a = null;

    public final Spliterator f42648b;

    public final Predicate f42649c;

    public C5611Ne(Spliterator spliterator, Predicate predicate) {
        this.f42648b = spliterator;
        this.f42649c = predicate;
    }

    @Override
    public final void accept(Object obj) {
        this.f42647a = obj;
    }

    @Override
    public final int characteristics() {
        return this.f42648b.characteristics() & 277;
    }

    @Override
    public final long estimateSize() {
        return this.f42648b.estimateSize() / 2;
    }

    @Override
    public final Comparator getComparator() {
        return this.f42648b.getComparator();
    }

    @Override
    public final boolean tryAdvance(Consumer consumer) {
        while (this.f42648b.tryAdvance(this)) {
            try {
                Object obj = this.f42647a;
                if (this.f42649c.test(obj)) {
                    consumer.accept(obj);
                    this.f42647a = null;
                    return true;
                }
            } finally {
                this.f42647a = null;
            }
        }
        return false;
    }

    @Override
    public final Spliterator trySplit() {
        Spliterator trySplit = this.f42648b.trySplit();
        if (trySplit == null) {
            return null;
        }
        Predicate predicate = this.f42649c;
        predicate.getClass();
        return new C5611Ne(trySplit, predicate);
    }
}
