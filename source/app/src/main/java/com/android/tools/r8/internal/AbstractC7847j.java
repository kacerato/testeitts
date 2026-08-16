package com.android.tools.r8.internal;

import java.util.ListIterator;

public abstract class AbstractC7847j extends AbstractC7682i implements InterfaceC9861v30, ListIterator {
    public abstract boolean a();

    @Override
    public final void add(Object obj) {
        ((Boolean) obj).booleanValue();
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object previous() {
        return Boolean.valueOf(a());
    }

    @Override
    public final void set(Object obj) {
        ((Boolean) obj).booleanValue();
        throw new UnsupportedOperationException();
    }
}
