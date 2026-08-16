package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class DT implements Iterator {

    public int f39530b = 0;

    public final int f39531c;

    public final ET f39532d;

    public DT(ET et) {
        this.f39532d = et;
        this.f39531c = et.f39875d.length;
    }

    public final byte a() {
        try {
            byte[] bArr = this.f39532d.f39875d;
            int i10 = this.f39530b;
            this.f39530b = i10 + 1;
            return bArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public final boolean hasNext() {
        return this.f39530b < this.f39531c;
    }

    @Override
    public final Object next() {
        return Byte.valueOf(a());
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
