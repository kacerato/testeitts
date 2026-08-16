package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

public final class C6130Wd0 extends C1 implements Serializable {

    public final com.android.tools.r8.graph.M2 f45489b;

    public C6130Wd0(com.android.tools.r8.graph.M2 m22) {
        this.f45489b = m22;
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
        return obj == this.f45489b;
    }

    @Override
    public final A30 iterator() {
        return new C30(this.f45489b);
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
        return new C30(this.f45489b);
    }
}
