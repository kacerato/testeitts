package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C5551Md0 extends AbstractC6685c1 {

    public int f42332b = 0;

    public final C5609Nd0 f42333c;

    public C5551Md0(C5609Nd0 c5609Nd0) {
        this.f42333c = c5609Nd0;
    }

    @Override
    public final boolean hasNext() {
        return this.f42332b < this.f42333c.f42644c;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f42333c.f42643b;
        int i10 = this.f42332b;
        this.f42332b = i10 + 1;
        return objArr[i10];
    }

    @Override
    public final void remove() {
        C5609Nd0 c5609Nd0 = this.f42333c;
        int i10 = c5609Nd0.f42644c;
        c5609Nd0.f42644c = i10 - 1;
        int i11 = this.f42332b;
        int i12 = i11 - 1;
        this.f42332b = i12;
        Object[] objArr = c5609Nd0.f42643b;
        System.arraycopy(objArr, i11, objArr, i12, i10 - i11);
        C5609Nd0 c5609Nd02 = this.f42333c;
        c5609Nd02.f42643b[c5609Nd02.f42644c] = null;
    }
}
