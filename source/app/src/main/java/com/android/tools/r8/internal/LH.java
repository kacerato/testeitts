package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;

public final class LH implements JH, Serializable {

    public final FH f41933b;

    public LH(FH fh2) {
        this.f41933b = fh2;
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
        return this.f41933b.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f41933b.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return this.f41933b.equals(obj);
    }

    @Override
    public final boolean h(int i10) {
        return this.f41933b.h(i10);
    }

    @Override
    public final int hashCode() {
        return this.f41933b.hashCode();
    }

    @Override
    public final boolean isEmpty() {
        return this.f41933b.isEmpty();
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
        return this.f41933b.f40170c;
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f41933b.toArray(objArr);
    }

    public final String toString() {
        return this.f41933b.toString();
    }

    @Override
    public final PH iterator() {
        return new RH(new EH(this.f41933b));
    }

    @Override
    public final Object[] toArray() {
        return this.f41933b.toArray();
    }

    @Override
    public final boolean add(int i10) {
        throw new UnsupportedOperationException();
    }
}
