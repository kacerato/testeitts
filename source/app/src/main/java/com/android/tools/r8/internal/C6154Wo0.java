package com.android.tools.r8.internal;

import java.util.Spliterator;
import java.util.function.Consumer;

public final class C6154Wo0 implements Consumer, Spliterator {

    public final Spliterator f45542a;

    public long f45543b;

    public Object f45544c;

    public final InterfaceC6268Yo0 f45545d;

    public C6154Wo0(Spliterator spliterator, long j10, InterfaceC6268Yo0 interfaceC6268Yo0) {
        this.f45545d = interfaceC6268Yo0;
        this.f45542a = spliterator;
        this.f45543b = j10;
    }

    @Override
    public final void accept(Object obj) {
        this.f45544c = obj;
    }

    @Override
    public final int characteristics() {
        return this.f45542a.characteristics() & 16464;
    }

    @Override
    public final long estimateSize() {
        return this.f45542a.estimateSize();
    }

    @Override
    public final boolean tryAdvance(Consumer consumer) {
        if (!this.f45542a.tryAdvance(this)) {
            return false;
        }
        try {
            InterfaceC6268Yo0 interfaceC6268Yo0 = this.f45545d;
            Object obj = this.f45544c;
            long j10 = this.f45543b;
            this.f45543b = 1 + j10;
            consumer.accept(interfaceC6268Yo0.a(obj, j10));
            this.f45544c = null;
            return true;
        } catch (Throwable th2) {
            this.f45544c = null;
            throw th2;
        }
    }

    @Override
    public final Spliterator trySplit() {
        Spliterator trySplit = this.f45542a.trySplit();
        if (trySplit == null) {
            return null;
        }
        long j10 = this.f45543b;
        C6154Wo0 c6154Wo0 = new C6154Wo0(trySplit, j10, this.f45545d);
        this.f45543b = trySplit.getExactSizeIfKnown() + j10;
        return c6154Wo0;
    }
}
