package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

public abstract class MC extends JC {
    @Override
    public final int a(int i10, Object[] objArr) {
        return a().a(i10, objArr);
    }

    @Override
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        CC cc2 = (CC) this;
        int size = cc2.f39155e.size();
        for (int i10 = 0; i10 < size; i10++) {
            consumer.accept(((MY) cc2.f39155e.get(i10)).b());
        }
    }

    public abstract Object get(int i10);

    @Override
    public final AbstractC4895Av0 iterator() {
        return a().iterator();
    }

    @Override
    public final AbstractC7552hC j() {
        return new LC(this);
    }

    @Override
    public final Spliterator spliterator() {
        return AbstractC5901Se.a(((CC) this).f39155e.size(), 1297, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return MC.this.get(i10);
            }
        }, (Comparator) null);
    }

    @Override
    public final Iterator iterator() {
        return a().iterator();
    }
}
