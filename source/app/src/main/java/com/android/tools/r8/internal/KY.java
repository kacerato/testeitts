package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class KY extends V0 {

    public final S0 f41694d;

    public KY(S0 s02) {
        this.f41694d = s02;
    }

    @Override
    public final int b(Object obj) {
        Collection collection = (Collection) AbstractC9595tV.a(this.f41694d.b(), obj);
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    @Override
    public final int c() {
        return this.f41694d.b().size();
    }

    @Override
    public final void clear() {
        this.f41694d.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f41694d.containsKey(obj);
    }

    @Override
    public final Iterator d() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public final void forEach(final Consumer consumer) {
        consumer.getClass();
        this.f41694d.a().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(((Map.Entry) obj).getKey());
            }
        });
    }

    @Override
    public final Iterator g() {
        return new JY(this.f41694d.b().entrySet().iterator());
    }

    @Override
    public final Iterator iterator() {
        return new C7260fV(this.f41694d.a().iterator());
    }

    @Override
    public final int size() {
        return this.f41694d.size();
    }

    @Override
    public final Spliterator spliterator() {
        return AbstractC5901Se.a(this.f41694d.a().spliterator(), new C9908vK0());
    }

    @Override
    public final Set w() {
        return this.f41694d.keySet();
    }

    @Override
    public final int b(int i10, Object obj) {
        AbstractC5496Le.a(i10, "occurrences");
        if (i10 == 0) {
            return b(obj);
        }
        Collection collection = (Collection) AbstractC9595tV.a(this.f41694d.b(), obj);
        if (collection == null) {
            return 0;
        }
        int size = collection.size();
        if (i10 >= size) {
            collection.clear();
            return size;
        }
        Iterator it = collection.iterator();
        for (int i11 = 0; i11 < i10; i11++) {
            it.next();
            it.remove();
        }
        return size;
    }
}
