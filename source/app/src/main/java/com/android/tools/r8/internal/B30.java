package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.NoSuchElementException;

public final class B30 extends AbstractC7352g1 implements Serializable, Cloneable {
    public final Object clone() {
        return E30.f39741a;
    }

    @Override
    public final boolean hasNext() {
        return false;
    }

    @Override
    public final boolean hasPrevious() {
        return false;
    }

    @Override
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override
    public final int nextIndex() {
        return 0;
    }

    @Override
    public final Object previous() {
        throw new NoSuchElementException();
    }

    @Override
    public final int previousIndex() {
        return -1;
    }
}
