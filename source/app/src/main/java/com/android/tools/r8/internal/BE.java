package com.android.tools.r8.internal;

import java.util.Spliterator;
import java.util.function.Consumer;

public final class BE implements Spliterator {

    public AbstractC10561zE f38859a;

    public final CE f38860b;

    public BE(CE ce2) {
        this.f38860b = ce2;
        this.f38859a = ce2.f39167c;
    }

    @Override
    public final int characteristics() {
        return 321;
    }

    @Override
    public final long estimateSize() {
        return this.f38860b.f39169e;
    }

    @Override
    public final long getExactSizeIfKnown() {
        return this.f38860b.f39169e;
    }

    @Override
    public final boolean tryAdvance(Consumer consumer) {
        AbstractC10561zE abstractC10561zE = this.f38859a;
        if (abstractC10561zE == null) {
            return false;
        }
        consumer.accept(abstractC10561zE);
        this.f38859a = this.f38859a.f54319d;
        return true;
    }

    @Override
    public final Spliterator trySplit() {
        return null;
    }
}
