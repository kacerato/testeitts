package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C6873d8 implements Iterator {

    public int f47290b = 0;

    public final int f47291c;

    public final AbstractC7540h8 f47292d;

    public C6873d8(AbstractC7540h8 abstractC7540h8) {
        this.f47292d = abstractC7540h8;
        this.f47291c = abstractC7540h8.size();
    }

    @Override
    public final boolean hasNext() {
        return this.f47290b < this.f47291c;
    }

    @Override
    public final Object next() {
        int i10 = this.f47290b;
        if (i10 >= this.f47291c) {
            throw new NoSuchElementException();
        }
        this.f47290b = i10 + 1;
        return Byte.valueOf(this.f47292d.k(i10));
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
