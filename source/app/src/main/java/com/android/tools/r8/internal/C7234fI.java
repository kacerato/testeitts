package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C7234fI implements Iterator {

    public final int f47928b;

    public final int f47929c;

    public boolean f47930d;

    public int f47931e;

    public C7234fI(int i10, int i11, int i12) {
        this.f47928b = i12;
        this.f47929c = i11;
        boolean z10 = i12 <= 0 ? i10 >= i11 : i10 <= i11;
        this.f47930d = z10;
        this.f47931e = z10 ? i10 : i11;
    }

    @Override
    public final boolean hasNext() {
        return this.f47930d;
    }

    @Override
    public final Object next() {
        int i10 = this.f47931e;
        if (i10 != this.f47929c) {
            this.f47931e = this.f47928b + i10;
        } else {
            if (!this.f47930d) {
                throw new NoSuchElementException();
            }
            this.f47930d = false;
        }
        return Integer.valueOf(i10);
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
