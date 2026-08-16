package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class C6277Yt implements Set, Serializable {

    public static final C6277Yt f46102b = new C6277Yt();

    @Override
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Void)) {
            return false;
        }
        GJ.c((Void) obj, "element");
        return false;
    }

    @Override
    public final boolean containsAll(Collection collection) {
        GJ.c(collection, "elements");
        return collection.isEmpty();
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof Set) && ((Set) obj).isEmpty();
    }

    @Override
    public final int hashCode() {
        return 0;
    }

    @Override
    public final boolean isEmpty() {
        return true;
    }

    @Override
    public final Iterator iterator() {
        return C5991Tt.f44605b;
    }

    @Override
    public final boolean remove(Object obj) {
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
    public final int size() {
        return 0;
    }

    @Override
    public final Object[] toArray() {
        return AbstractC6075Ve.a(this);
    }

    public final String toString() {
        return okhttp3.v.f99450n;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        GJ.c(objArr, "array");
        return AbstractC6075Ve.a(this, objArr);
    }
}
