package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Spliterators;
import java.util.function.Consumer;

public final class C6211Xo0 extends Spliterators.AbstractSpliterator {

    public long f45824a;

    public final Iterator f45825b;

    public final InterfaceC6268Yo0 f45826c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6211Xo0(long j10, int i10, Iterator it, InterfaceC6268Yo0 interfaceC6268Yo0) {
        super(j10, i10);
        this.f45825b = it;
        this.f45826c = interfaceC6268Yo0;
        this.f45824a = 0L;
    }

    @Override
    public final boolean tryAdvance(Consumer consumer) {
        if (!this.f45825b.hasNext()) {
            return false;
        }
        InterfaceC6268Yo0 interfaceC6268Yo0 = this.f45826c;
        Object next = this.f45825b.next();
        long j10 = this.f45824a;
        this.f45824a = 1 + j10;
        consumer.accept(interfaceC6268Yo0.a(next, j10));
        return true;
    }
}
