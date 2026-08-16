package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;

public final class X6 implements V6, Serializable {

    public final S6 f45616b;

    public X6(S6 s62) {
        this.f45616b = s62;
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
        return this.f45616b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f45616b.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return this.f45616b.equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.f45616b.hashCode();
    }

    @Override
    public final boolean isEmpty() {
        return this.f45616b.isEmpty();
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
        return this.f45616b.f44089c;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f45616b.toArray(objArr);
    }

    public final String toString() {
        return this.f45616b.toString();
    }

    @Override
    public final InterfaceC6370a7 iterator() {
        return new C6870d7(new R6(this.f45616b));
    }

    @Override
    public final Object[] toArray() {
        return this.f45616b.toArray();
    }
}
