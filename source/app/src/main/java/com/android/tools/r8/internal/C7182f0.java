package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class C7182f0 implements Iterator {

    public int f47819b;

    public final AbstractC7683i0 f47820c;

    public C7182f0(AbstractC7683i0 abstractC7683i0) {
        this.f47820c = abstractC7683i0;
    }

    @Override
    public final boolean hasNext() {
        return this.f47819b < this.f47820c.a();
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        AbstractC7683i0 abstractC7683i0 = this.f47820c;
        int i10 = this.f47819b;
        this.f47819b = i10 + 1;
        return abstractC7683i0.get(i10);
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
