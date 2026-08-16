package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10054wC extends XB {

    public final AbstractC8552nC f53445c;

    public C10054wC(AbstractC8552nC abstractC8552nC) {
        this.f53445c = abstractC8552nC;
    }

    @Override
    public final AbstractC7552hC a() {
        return new C9887vC(this, this.f53445c.entrySet().a());
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        AbstractC4895Av0 it = this.f53445c.entrySet().iterator();
        while (it.hasNext()) {
            if (obj.equals(((Map.Entry) it.next()).getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        this.f53445c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept(obj2);
            }
        });
    }

    @Override
    public final boolean g() {
        return true;
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return new C9720uC(this);
    }

    @Override
    public final int size() {
        return this.f53445c.size();
    }

    @Override
    public final Spliterator spliterator() {
        return AbstractC5901Se.a(this.f53445c.entrySet().spliterator(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Map.Entry) obj).getValue();
            }
        });
    }

    @Override
    public final Iterator iterator() {
        return new C9720uC(this);
    }
}
