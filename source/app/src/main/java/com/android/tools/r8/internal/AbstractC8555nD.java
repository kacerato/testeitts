package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

public abstract class AbstractC8555nD extends JC {
    @Override
    public final int a(int i10, Object[] objArr) {
        return a().a(i10, objArr);
    }

    @Override
    public void forEach(Consumer consumer) {
        consumer.getClass();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            consumer.accept(get(i10));
        }
    }

    public abstract Object get(int i10);

    @Override
    public AbstractC4895Av0 iterator() {
        return a().iterator();
    }

    @Override
    public final AbstractC7552hC j() {
        return new C8388mD(this);
    }

    @Override
    public Spliterator spliterator() {
        return AbstractC5901Se.a(size(), 1297, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return AbstractC8555nD.this.get(i10);
            }
        }, (Comparator) null);
    }
}
