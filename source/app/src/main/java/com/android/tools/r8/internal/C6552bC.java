package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class C6552bC extends QC {

    public static final int f46725f = 0;

    public final transient EnumSet f46726d;

    public transient int f46727e;

    public C6552bC(EnumSet enumSet) {
        this.f46726d = enumSet;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f46726d.contains(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean containsAll(Collection collection) {
        if (collection instanceof C6552bC) {
            collection = ((C6552bC) collection).f46726d;
        }
        return this.f46726d.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C6552bC) {
            obj = ((C6552bC) obj).f46726d;
        }
        return this.f46726d.equals(obj);
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f46726d.forEach(consumer);
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final int hashCode() {
        int i10 = this.f46727e;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = this.f46726d.hashCode();
        this.f46727e = hashCode;
        return hashCode;
    }

    @Override
    public final boolean isEmpty() {
        return this.f46726d.isEmpty();
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        Iterator<E> it = this.f46726d.iterator();
        it.getClass();
        if (it instanceof AbstractC4895Av0) {
            return (AbstractC4895Av0) it;
        }
        return new C10408yK(it);
    }

    @Override
    public final int size() {
        return this.f46726d.size();
    }

    @Override
    public final Spliterator spliterator() {
        return this.f46726d.spliterator();
    }

    @Override
    public final String toString() {
        return this.f46726d.toString();
    }

    @Override
    public final Iterator iterator() {
        Iterator<E> it = this.f46726d.iterator();
        it.getClass();
        if (it instanceof AbstractC4895Av0) {
            return (AbstractC4895Av0) it;
        }
        return new C10408yK(it);
    }
}
