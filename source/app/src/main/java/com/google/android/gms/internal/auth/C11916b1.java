package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;

public final class C11916b1 extends AbstractC11924d1 {

    public int f61700b = 0;

    public final int f61701c;

    public final AbstractC11956l1 f61702d;

    public C11916b1(AbstractC11956l1 abstractC11956l1) {
        this.f61702d = abstractC11956l1;
        this.f61701c = abstractC11956l1.l();
    }

    @Override
    public final byte N1() {
        int i10 = this.f61700b;
        if (i10 >= this.f61701c) {
            throw new NoSuchElementException();
        }
        this.f61700b = i10 + 1;
        return this.f61702d.k(i10);
    }

    @Override
    public final boolean hasNext() {
        return this.f61700b < this.f61701c;
    }
}
