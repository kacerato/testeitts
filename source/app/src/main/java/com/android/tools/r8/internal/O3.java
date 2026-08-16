package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class O3 implements Iterator {

    public final Object[] f42769b;

    public int f42770c;

    public O3(Object[] objArr) {
        this.f42769b = objArr;
    }

    @Override
    public final boolean hasNext() {
        return this.f42770c < this.f42769b.length;
    }

    @Override
    public final Object next() {
        try {
            Object[] objArr = this.f42769b;
            int i10 = this.f42770c;
            this.f42770c = i10 + 1;
            return objArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f42770c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
