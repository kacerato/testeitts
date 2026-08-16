package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9056qD implements Iterator {

    public final Iterator f51738b;

    public int f51739c;

    public C9056qD(Iterator it) {
        GJ.c(it, "iterator");
        this.f51738b = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f51738b.hasNext();
    }

    @Override
    public final Object next() {
        int i10 = this.f51739c;
        this.f51739c = i10 + 1;
        if (i10 >= 0) {
            return new C8722oD(i10, this.f51738b.next());
        }
        throw new ArithmeticException("Index overflow has happened.");
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
