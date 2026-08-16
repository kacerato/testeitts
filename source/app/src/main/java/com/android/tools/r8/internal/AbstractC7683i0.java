package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public abstract class AbstractC7683i0 implements List, Collection {
    public static final CharSequence a(AbstractC7683i0 abstractC7683i0, Object obj) {
        return obj == abstractC7683i0 ? "(this Collection)" : String.valueOf(obj);
    }

    public abstract int a();

    @Override
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (GJ.a(it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean containsAll(Collection collection) {
        GJ.c(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection collection = (Collection) obj;
        GJ.c(collection, "other");
        if (size() != collection.size()) {
            return false;
        }
        Iterator it = collection.iterator();
        Iterator<E> it2 = iterator();
        while (it2.hasNext()) {
            if (!GJ.a(it2.next(), it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int hashCode() {
        Iterator<E> it = iterator();
        int i10 = 1;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = (i10 * 31) + (next != null ? next.hashCode() : 0);
        }
        return i10;
    }

    @Override
    public int indexOf(Object obj) {
        Iterator it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (GJ.a(it.next(), obj)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return a() == 0;
    }

    @Override
    public final Iterator iterator() {
        return new C7182f0(this);
    }

    @Override
    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (GJ.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override
    public final ListIterator listIterator() {
        return new C7349g0(this, 0);
    }

    @Override
    public final Object remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return a();
    }

    @Override
    public final List subList(int i10, int i11) {
        return new C7516h0(this, i10, i11);
    }

    @Override
    public final Object[] toArray() {
        return AbstractC6075Ve.a(this);
    }

    public final String toString() {
        return AbstractC6303Ze.a(this, ", ", "[", "]", new InterfaceC8676ny() {
            @Override
            public final Object a(Object obj) {
                return AbstractC7683i0.a(AbstractC7683i0.this, obj);
            }
        }, 24);
    }

    @Override
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new C7349g0(this, i10);
    }

    @Override
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        GJ.c(objArr, "array");
        return AbstractC6075Ve.a(this, objArr);
    }
}
