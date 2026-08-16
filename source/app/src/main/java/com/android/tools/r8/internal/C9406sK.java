package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class C9406sK extends AbstractC6114Vx {

    public final Iterable f52337b;

    public final InterfaceC5422Jy f52338c;

    public C9406sK(Iterable iterable, InterfaceC5422Jy interfaceC5422Jy) {
        this.f52337b = iterable;
        this.f52338c = interfaceC5422Jy;
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        Iterable iterable = this.f52337b;
        final InterfaceC5422Jy interfaceC5422Jy = this.f52338c;
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(interfaceC5422Jy.apply(obj));
            }
        });
    }

    @Override
    public final Iterator iterator() {
        return JK.a(this.f52337b.iterator(), this.f52338c);
    }

    @Override
    public final Spliterator spliterator() {
        return AbstractC5901Se.a(this.f52337b.spliterator(), this.f52338c);
    }
}
