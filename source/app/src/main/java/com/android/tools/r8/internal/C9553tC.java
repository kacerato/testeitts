package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C9553tC extends AbstractC8555nD {

    public final AbstractC8552nC f52558e;

    public C9553tC(AbstractC8552nC abstractC8552nC) {
        this.f52558e = abstractC8552nC;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f52558e.containsKey(obj);
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        this.f52558e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept(obj);
            }
        });
    }

    @Override
    public final boolean g() {
        return true;
    }

    @Override
    public final Object get(int i10) {
        return ((Map.Entry) this.f52558e.entrySet().a().get(i10)).getKey();
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return this.f52558e.m();
    }

    @Override
    public final int size() {
        return this.f52558e.size();
    }

    @Override
    public final Spliterator spliterator() {
        return this.f52558e.o();
    }

    @Override
    public final Iterator iterator() {
        return this.f52558e.m();
    }
}
