package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class C12183t implements Iterator {

    public int f62428b;

    public final C12192u f62429c;

    public C12183t(C12192u c12192u) {
        Objects.requireNonNull(c12192u);
        this.f62429c = c12192u;
        this.f62428b = 0;
    }

    @Override
    public final boolean hasNext() {
        return this.f62428b < this.f62429c.b().length();
    }

    @Override
    public final Object next() {
        C12192u c12192u = this.f62429c;
        String b10 = c12192u.b();
        int i10 = this.f62428b;
        if (i10 >= b10.length()) {
            throw new NoSuchElementException();
        }
        this.f62428b = i10 + 1;
        return new C12192u(String.valueOf(c12192u.b().charAt(i10)));
    }
}
