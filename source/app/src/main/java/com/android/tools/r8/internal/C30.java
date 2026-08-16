package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C30 extends AbstractC7352g1 {

    public final Object f39114b;

    public int f39115c;

    public C30(Object obj) {
        this.f39114b = obj;
    }

    @Override
    public final boolean hasNext() {
        return this.f39115c == 0;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f39115c == 1;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f39115c = 1;
        return this.f39114b;
    }

    @Override
    public final int nextIndex() {
        return this.f39115c;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        this.f39115c = 0;
        return this.f39114b;
    }

    @Override
    public final int previousIndex() {
        return this.f39115c - 1;
    }
}
