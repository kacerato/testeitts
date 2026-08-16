package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class C12174s implements Iterator {

    public int f62422b;

    public final C12192u f62423c;

    public C12174s(C12192u c12192u) {
        Objects.requireNonNull(c12192u);
        this.f62423c = c12192u;
        this.f62422b = 0;
    }

    @Override
    public final boolean hasNext() {
        return this.f62422b < this.f62423c.b().length();
    }

    @Override
    public final Object next() {
        String b10 = this.f62423c.b();
        int i10 = this.f62422b;
        if (i10 >= b10.length()) {
            throw new NoSuchElementException();
        }
        this.f62422b = i10 + 1;
        return new C12192u(String.valueOf(i10));
    }
}
