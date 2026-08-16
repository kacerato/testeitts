package com.android.tools.r8.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public abstract class AbstractC6546bA implements Iterator {

    public C6118Vz f46717b;

    public C6118Vz f46718c = null;

    public int f46719d;

    public int f46720e;

    public final C7045eA f46721f;

    public AbstractC6546bA(C7045eA c7045eA) {
        this.f46721f = c7045eA;
        this.f46717b = c7045eA.f47618d;
        this.f46719d = c7045eA.f47622h;
        this.f46720e = c7045eA.f47620f;
    }

    public abstract Object a(C6118Vz c6118Vz);

    @Override
    public final boolean hasNext() {
        if (this.f46721f.f47622h == this.f46719d) {
            return this.f46717b != null && this.f46720e > 0;
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C6118Vz c6118Vz = this.f46717b;
        Objects.requireNonNull(c6118Vz);
        this.f46717b = c6118Vz.f45246h;
        this.f46718c = c6118Vz;
        this.f46720e--;
        return a(c6118Vz);
    }

    @Override
    public final void remove() {
        C7045eA c7045eA = this.f46721f;
        if (c7045eA.f47622h != this.f46719d) {
            throw new ConcurrentModificationException();
        }
        C6118Vz c6118Vz = this.f46718c;
        if (c6118Vz == null) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        c7045eA.a(c6118Vz);
        this.f46719d = this.f46721f.f47622h;
        this.f46718c = null;
    }
}
