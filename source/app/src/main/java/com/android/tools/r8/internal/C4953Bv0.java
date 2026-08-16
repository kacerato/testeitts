package com.android.tools.r8.internal;

import java.util.ListIterator;

public final class C4953Bv0 implements ListIterator {

    public final ListIterator f39037b;

    public C4953Bv0(C5185Fv0 c5185Fv0, int i10) {
        this.f39037b = c5185Fv0.f40344b.listIterator(i10);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        return this.f39037b.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f39037b.hasPrevious();
    }

    @Override
    public final Object next() {
        return (String) this.f39037b.next();
    }

    @Override
    public final int nextIndex() {
        return this.f39037b.nextIndex();
    }

    @Override
    public final Object previous() {
        return (String) this.f39037b.previous();
    }

    @Override
    public final int previousIndex() {
        return this.f39037b.previousIndex();
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
