package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;

public final class C5783Qd0 implements InterfaceC5667Od0, Serializable {

    public final C5609Nd0 f43648b;

    public C5783Qd0(C5609Nd0 c5609Nd0) {
        this.f43648b = c5609Nd0;
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
        return this.f43648b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f43648b.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return this.f43648b.equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.f43648b.hashCode();
    }

    @Override
    public final boolean isEmpty() {
        return this.f43648b.isEmpty();
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
        return this.f43648b.f42644c;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f43648b.toArray(objArr);
    }

    public final String toString() {
        return this.f43648b.toString();
    }

    @Override
    public final A30 iterator() {
        return new D30(new C5551Md0(this.f43648b));
    }

    @Override
    public final Object[] toArray() {
        return this.f43648b.toArray();
    }
}
