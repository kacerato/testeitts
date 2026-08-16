package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

public final class C8203l7 extends AbstractC8014k implements Serializable {

    public final boolean f49893b = true;

    @Override
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean b(boolean z10) {
        return z10 == this.f49893b;
    }

    public final Object clone() {
        return this;
    }

    @Override
    public final boolean d(boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC6370a7 iterator() {
        return new C6703c7(this.f49893b);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final Iterator iterator() {
        return new C6703c7(this.f49893b);
    }
}
