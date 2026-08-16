package com.google.android.gms.internal.auth;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C11988t2 implements Iterator {
    @Override
    public final boolean hasNext() {
        return false;
    }

    @Override
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
