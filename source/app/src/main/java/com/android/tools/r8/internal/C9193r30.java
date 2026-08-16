package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C9193r30 extends AbstractC6685c1 {

    public int f51955b = 0;

    public final C9360s30 f51956c;

    public C9193r30(C9360s30 c9360s30) {
        this.f51956c = c9360s30;
    }

    @Override
    public final boolean hasNext() {
        return this.f51955b < this.f51956c.f52262c;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f51956c.f52261b;
        int i10 = this.f51955b;
        this.f51955b = i10 + 1;
        return objArr[i10];
    }

    @Override
    public final void remove() {
        C9360s30 c9360s30 = this.f51956c;
        int i10 = c9360s30.f52262c;
        c9360s30.f52262c = i10 - 1;
        int i11 = this.f51955b;
        int i12 = i11 - 1;
        this.f51955b = i12;
        Object[] objArr = c9360s30.f52261b;
        System.arraycopy(objArr, i11, objArr, i12, i10 - i11);
        C9360s30 c9360s302 = this.f51956c;
        c9360s302.f52261b[c9360s302.f52262c] = null;
    }
}
