package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class EK extends AbstractC4895Av0 {

    public boolean f39831b;

    public final Object f39832c;

    public EK(Object obj) {
        this.f39832c = obj;
    }

    @Override
    public final boolean hasNext() {
        return !this.f39831b;
    }

    @Override
    public final Object next() {
        if (this.f39831b) {
            throw new NoSuchElementException();
        }
        this.f39831b = true;
        return this.f39832c;
    }
}
