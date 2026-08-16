package com.android.tools.r8.internal;

import java.util.ListIterator;

public final class C5011Cv0 implements ListIterator {

    public final ListIterator f39382b;

    public C5011Cv0(C5243Gv0 c5243Gv0, int i10) {
        this.f39382b = c5243Gv0.f40622b.listIterator(i10);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        return this.f39382b.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f39382b.hasPrevious();
    }

    @Override
    public final Object next() {
        return (String) this.f39382b.next();
    }

    @Override
    public final int nextIndex() {
        return this.f39382b.nextIndex();
    }

    @Override
    public final Object previous() {
        return (String) this.f39382b.previous();
    }

    @Override
    public final int previousIndex() {
        return this.f39382b.previousIndex();
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
