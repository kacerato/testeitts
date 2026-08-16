package com.google.android.gms.internal.auth;

import java.util.ListIterator;

public final class J2 implements ListIterator {

    public final ListIterator f61629b;

    public final int f61630c;

    public final L2 f61631d;

    public J2(L2 l22, int i10) {
        L1 l12;
        this.f61631d = l22;
        this.f61630c = i10;
        l12 = l22.f61638b;
        this.f61629b = l12.listIterator(i10);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        return this.f61629b.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f61629b.hasPrevious();
    }

    @Override
    public final Object next() {
        return (String) this.f61629b.next();
    }

    @Override
    public final int nextIndex() {
        return this.f61629b.nextIndex();
    }

    @Override
    public final Object previous() {
        return (String) this.f61629b.previous();
    }

    @Override
    public final int previousIndex() {
        return this.f61629b.previousIndex();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
