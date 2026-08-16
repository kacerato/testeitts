package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

public final class K30 extends AbstractC7519h1 implements Serializable {

    public final C9854v1 f41564b;

    public K30(C9854v1 c9854v1) {
        this.f41564b = c9854v1;
    }

    @Override
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    public final Object clone() {
        return this;
    }

    @Override
    public final boolean contains(Object obj) {
        return obj == null ? this.f41564b == null : obj.equals(this.f41564b);
    }

    @Override
    public final A30 iterator() {
        return new C30(this.f41564b);
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
        return 1;
    }

    @Override
    public final Iterator iterator() {
        return new C30(this.f41564b);
    }
}
