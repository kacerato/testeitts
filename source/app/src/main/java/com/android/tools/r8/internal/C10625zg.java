package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class C10625zg extends AbstractC7175ey implements Set, Collection {

    public final Set f54441b;

    public C10625zg(Set set) {
        this.f54441b = set;
    }

    @Override
    public final Object a() {
        return this.f54441b;
    }

    @Override
    public final boolean add(Object obj) {
        return this.f54441b.add(obj);
    }

    @Override
    public final boolean addAll(Collection collection) {
        return this.f54441b.addAll(collection);
    }

    @Override
    public final void clear() {
        this.f54441b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        boolean z10;
        if (obj != null) {
            Set set = this.f54441b;
            set.getClass();
            try {
                z10 = set.contains(obj);
            } catch (ClassCastException | NullPointerException unused) {
                z10 = false;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        return obj == this || this.f54441b.equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.f54441b.hashCode();
    }

    @Override
    public final boolean isEmpty() {
        return this.f54441b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f54441b.iterator();
    }

    @Override
    public final boolean remove(Object obj) {
        boolean z10;
        if (obj == null) {
            return false;
        }
        Set set = this.f54441b;
        set.getClass();
        try {
            z10 = set.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z10 = false;
        }
        return z10;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        return AbstractC5513Ll0.a(this, collection);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        return this.f54441b.retainAll(collection);
    }

    @Override
    public final int size() {
        return this.f54441b.size();
    }

    @Override
    public final Object[] toArray() {
        return this.f54441b.toArray();
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f54441b.toArray(objArr);
    }
}
