package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Spliterators;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public final class C6097Vo0 extends Spliterators.AbstractSpliterator {

    public final Iterator f45180a;

    public final Iterator f45181b;

    public final BiFunction f45182c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6097Vo0(long j10, int i10, Iterator it, Iterator it2, BiFunction biFunction) {
        super(j10, i10);
        this.f45180a = it;
        this.f45181b = it2;
        this.f45182c = biFunction;
    }

    @Override
    public final boolean tryAdvance(Consumer consumer) {
        if (!this.f45180a.hasNext() || !this.f45181b.hasNext()) {
            return false;
        }
        consumer.accept(this.f45182c.apply(this.f45180a.next(), this.f45181b.next()));
        return true;
    }
}
