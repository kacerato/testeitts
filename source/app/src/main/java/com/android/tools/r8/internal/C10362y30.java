package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;

public final class C10362y30 implements InterfaceC10028w30, Serializable {

    public final C9360s30 f53935b;

    public C10362y30(C9360s30 c9360s30) {
        this.f53935b = c9360s30;
    }

    @Override
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f53935b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f53935b.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return this.f53935b.equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.f53935b.hashCode();
    }

    @Override
    public final boolean isEmpty() {
        return this.f53935b.isEmpty();
    }

    @Override
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int size() {
        return this.f53935b.f52262c;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f53935b.toArray(objArr);
    }

    public final String toString() {
        return this.f53935b.toString();
    }

    @Override
    public final A30 iterator() {
        return new D30(new C9193r30(this.f53935b));
    }

    @Override
    public final Object[] toArray() {
        return this.f53935b.toArray();
    }
}
