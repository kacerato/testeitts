package com.android.tools.r8.internal;

import java.util.EnumMap;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.BiConsumer;

public final class C6385aC extends AbstractC8385mC {

    public final transient EnumMap f46469f;

    public C6385aC(EnumMap enumMap) {
        this.f46469f = enumMap;
        if (enumMap.isEmpty()) {
            throw new IllegalArgumentException();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f46469f.containsKey(obj);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C6385aC) {
            obj = ((C6385aC) obj).f46469f;
        }
        return this.f46469f.equals(obj);
    }

    @Override
    public final void forEach(BiConsumer biConsumer) {
        this.f46469f.forEach(biConsumer);
    }

    @Override
    public final Object get(Object obj) {
        return this.f46469f.get(obj);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @Override
    public final AbstractC4895Av0 m() {
        Iterator it = this.f46469f.o().iterator();
        it.getClass();
        return it instanceof AbstractC4895Av0 ? (AbstractC4895Av0) it : new C10408yK(it);
    }

    @Override
    public final Spliterator o() {
        return this.f46469f.o().spliterator();
    }

    @Override
    public final int size() {
        return this.f46469f.size();
    }
}
