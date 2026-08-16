package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class C9239rK extends AbstractC6114Vx {

    public final Iterable f52022b;

    public final V60 f52023c;

    public C9239rK(Iterable iterable, V60 v60) {
        this.f52022b = iterable;
        this.f52023c = v60;
    }

    public static void a(V60 v60, Consumer consumer, Object obj) {
        if (v60.test(obj)) {
            consumer.accept(obj);
        }
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        Iterable iterable = this.f52022b;
        final V60 v60 = this.f52023c;
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9239rK.a(V60.this, consumer, obj);
            }
        });
    }

    @Override
    public final Iterator iterator() {
        Iterator it = this.f52022b.iterator();
        V60 v60 = this.f52023c;
        it.getClass();
        v60.getClass();
        return new BK(it, v60);
    }

    @Override
    public final Spliterator spliterator() {
        Spliterator spliterator = this.f52022b.spliterator();
        V60 v60 = this.f52023c;
        spliterator.getClass();
        v60.getClass();
        return new C5611Ne(spliterator, v60);
    }
}
