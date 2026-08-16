package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public abstract class AbstractC9095qV extends AbstractC5397Jl0 {

    public final AbstractMap f51794b;

    public AbstractC9095qV(AbstractMap abstractMap) {
        abstractMap.getClass();
        this.f51794b = abstractMap;
    }

    @Override
    public void clear() {
        this.f51794b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f51794b.containsKey(obj);
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        this.f51794b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept(obj);
            }
        });
    }

    @Override
    public final boolean isEmpty() {
        return this.f51794b.isEmpty();
    }

    @Override
    public final int size() {
        return this.f51794b.size();
    }
}
