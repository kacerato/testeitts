package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.NoSuchElementException;

public abstract class G extends AbstractC4895Av0 implements ListIterator {

    public final int f40363b;

    public int f40364c;

    public G(int i10, int i11) {
        U60.b(i11, i10);
        this.f40363b = i10;
        this.f40364c = i11;
    }

    public abstract Object a(int i10);

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        return this.f40364c < this.f40363b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f40364c > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f40364c;
        this.f40364c = i10 + 1;
        return a(i10);
    }

    @Override
    public final int nextIndex() {
        return this.f40364c;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f40364c - 1;
        this.f40364c = i10;
        return a(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f40364c - 1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
