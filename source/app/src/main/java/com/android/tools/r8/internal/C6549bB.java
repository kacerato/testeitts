package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C6549bB implements Iterator {

    public final AE f46723b;

    public C8024k3 f46724c;

    public C6549bB(C7215fB c7215fB) {
        AE H10 = c7215fB.k().H();
        this.f46723b = H10;
        this.f46724c = H10.next().v();
    }

    @Override
    public final boolean hasNext() {
        return this.f46724c != null;
    }

    @Override
    public final Object next() {
        C8024k3 c8024k3 = this.f46724c;
        if (c8024k3 == null) {
            throw new NoSuchElementException();
        }
        this.f46724c = this.f46723b.next().v();
        return c8024k3;
    }
}
