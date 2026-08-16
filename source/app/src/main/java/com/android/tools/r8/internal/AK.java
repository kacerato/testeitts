package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class AK extends AbstractC4895Av0 {

    public int f38593b = 0;

    public final Iterator[] f38594c;

    public AK(Iterator[] itArr) {
        this.f38594c = itArr;
    }

    @Override
    public final boolean hasNext() {
        return this.f38593b < this.f38594c.length;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Iterator it = this.f38594c[this.f38593b];
        Objects.requireNonNull(it);
        Iterator it2 = it;
        Iterator[] itArr = this.f38594c;
        int i10 = this.f38593b;
        itArr[i10] = null;
        this.f38593b = i10 + 1;
        return it2;
    }
}
