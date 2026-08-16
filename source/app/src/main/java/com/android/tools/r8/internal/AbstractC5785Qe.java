package com.android.tools.r8.internal;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC5785Qe implements Spliterator {

    public Spliterator f43650a;

    public final Spliterator f43651b;

    public final Function f43652c;

    public final InterfaceC5727Pe f43653d;

    public int f43654e;

    public long f43655f;

    public AbstractC5785Qe(Spliterator spliterator, Spliterator spliterator2, Function function, InterfaceC5727Pe interfaceC5727Pe, int i10, long j10) {
        this.f43650a = spliterator;
        this.f43651b = spliterator2;
        this.f43652c = function;
        this.f43653d = interfaceC5727Pe;
        this.f43654e = i10;
        this.f43655f = j10;
    }

    public final void a(Object obj) {
        this.f43650a = (Spliterator) this.f43652c.apply(obj);
    }

    @Override
    public final int characteristics() {
        return this.f43654e;
    }

    @Override
    public final long estimateSize() {
        Spliterator spliterator = this.f43650a;
        if (spliterator != null) {
            this.f43655f = Math.max(this.f43655f, spliterator.estimateSize());
        }
        return Math.max(this.f43655f, 0L);
    }

    @Override
    public final void forEachRemaining(final Consumer consumer) {
        Spliterator spliterator = this.f43650a;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            this.f43650a = null;
        }
        this.f43651b.forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5785Qe.this.a(consumer, obj);
            }
        });
        this.f43655f = 0L;
    }

    @Override
    public final boolean tryAdvance(Consumer consumer) {
        do {
            Spliterator spliterator = this.f43650a;
            if (spliterator != null && spliterator.tryAdvance(consumer)) {
                long j10 = this.f43655f;
                if (j10 == Long.MAX_VALUE) {
                    return true;
                }
                this.f43655f = j10 - 1;
                return true;
            }
            this.f43650a = null;
        } while (this.f43651b.tryAdvance(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5785Qe.this.a(obj);
            }
        }));
        return false;
    }

    @Override
    public final Spliterator trySplit() {
        Spliterator trySplit = this.f43651b.trySplit();
        if (trySplit == null) {
            Spliterator spliterator = this.f43650a;
            if (spliterator == null) {
                return null;
            }
            this.f43650a = null;
            return spliterator;
        }
        int i10 = this.f43654e & (-65);
        long estimateSize = estimateSize();
        if (estimateSize < Long.MAX_VALUE) {
            estimateSize /= 2;
            this.f43655f -= estimateSize;
            this.f43654e = i10;
        }
        Spliterator a10 = this.f43653d.a(this.f43650a, trySplit, this.f43652c, i10, estimateSize);
        this.f43650a = null;
        return a10;
    }

    public final void a(Consumer consumer, Object obj) {
        Spliterator spliterator = (Spliterator) this.f43652c.apply(obj);
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
        }
    }
}
