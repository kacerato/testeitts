package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C9261rV extends AbstractCollection {

    public final AbstractC9428sV f52049b;

    public C9261rV(AbstractC9428sV abstractC9428sV) {
        this.f52049b = abstractC9428sV;
    }

    @Override
    public final void clear() {
        this.f52049b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f52049b.containsValue(obj);
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        this.f52049b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Consumer.this.accept(obj2);
            }
        });
    }

    @Override
    public final boolean isEmpty() {
        return this.f52049b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return new C7427gV(this.f52049b.entrySet().iterator());
    }

    @Override
    public final boolean remove(Object obj) {
        try {
            return super.remove(obj);
        } catch (UnsupportedOperationException unused) {
            for (Map.Entry entry : this.f52049b.entrySet()) {
                if (V30.a(obj, entry.getValue())) {
                    this.f52049b.remove(entry.getKey());
                    return true;
                }
            }
            return false;
        }
    }

    @Override
    public final boolean removeAll(Collection collection) {
        try {
            collection.getClass();
            return super.removeAll(collection);
        } catch (UnsupportedOperationException unused) {
            Collection<?> hashSet = new HashSet<>();
            for (Map.Entry entry : this.f52049b.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSet.add(entry.getKey());
                }
            }
            return this.f52049b.o().removeAll(hashSet);
        }
    }

    @Override
    public final boolean retainAll(Collection collection) {
        try {
            collection.getClass();
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            Collection<?> hashSet = new HashSet<>();
            for (Map.Entry entry : this.f52049b.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSet.add(entry.getKey());
                }
            }
            return this.f52049b.o().retainAll(hashSet);
        }
    }

    @Override
    public final int size() {
        return this.f52049b.size();
    }
}
