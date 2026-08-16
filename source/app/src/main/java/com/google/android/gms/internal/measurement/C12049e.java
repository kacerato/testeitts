package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class C12049e implements Iterator {

    public int f62257b;

    public final C12058f f62258c;

    public C12049e(C12058f c12058f) {
        Objects.requireNonNull(c12058f);
        this.f62258c = c12058f;
        this.f62257b = 0;
    }

    @Override
    public final boolean hasNext() {
        return this.f62257b < this.f62258c.k();
    }

    @Override
    public final Object next() {
        C12058f c12058f = this.f62258c;
        if (this.f62257b < c12058f.k()) {
            int i10 = this.f62257b;
            this.f62257b = i10 + 1;
            return c12058f.m(i10);
        }
        int i11 = this.f62257b;
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 21);
        sb2.append("Out of bounds index: ");
        sb2.append(i11);
        throw new NoSuchElementException(sb2.toString());
    }
}
