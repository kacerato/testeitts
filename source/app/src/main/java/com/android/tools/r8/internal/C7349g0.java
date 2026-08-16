package com.android.tools.r8.internal;

import java.util.ListIterator;
import java.util.NoSuchElementException;

public final class C7349g0 extends C7182f0 implements ListIterator {

    public final AbstractC7683i0 f48162d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7349g0(AbstractC7683i0 abstractC7683i0, int i10) {
        super(abstractC7683i0);
        this.f48162d = abstractC7683i0;
        int a10 = abstractC7683i0.a();
        if (i10 >= 0 && i10 <= a10) {
            this.f47819b = i10;
            return;
        }
        throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + a10);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean hasPrevious() {
        return this.f47819b > 0;
    }

    @Override
    public final int nextIndex() {
        return this.f47819b;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        AbstractC7683i0 abstractC7683i0 = this.f48162d;
        int i10 = this.f47819b - 1;
        this.f47819b = i10;
        return abstractC7683i0.get(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f47819b - 1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
