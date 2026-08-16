package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public class C7735iI extends AbstractC6516b0 {

    public C7568hI f48909b;

    public C7568hI f48910c;

    public C7568hI f48911d;

    public int f48912e = 0;

    public final C8234lI f48913f;

    public C7735iI(C8234lI c8234lI) {
        this.f48913f = c8234lI;
        this.f48910c = c8234lI.f49922d;
    }

    public void a() {
        this.f48910c = this.f48910c.b();
    }

    public void b() {
        this.f48909b = this.f48909b.d();
    }

    @Override
    public final int c() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        C7568hI c7568hI = this.f48909b;
        this.f48910c = c7568hI;
        this.f48911d = c7568hI;
        this.f48912e--;
        b();
        return this.f48911d.f48522b;
    }

    @Override
    public final boolean hasNext() {
        return this.f48910c != null;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f48909b != null;
    }

    @Override
    public final int nextIndex() {
        return this.f48912e;
    }

    @Override
    public final int previousIndex() {
        return this.f48912e - 1;
    }

    @Override
    public final int r() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C7568hI c7568hI = this.f48910c;
        this.f48909b = c7568hI;
        this.f48911d = c7568hI;
        this.f48912e++;
        a();
        return this.f48911d.f48522b;
    }

    @Override
    public final void remove() {
        C7568hI c7568hI = this.f48911d;
        if (c7568hI == null) {
            throw new IllegalStateException();
        }
        if (c7568hI == this.f48909b) {
            this.f48912e--;
        }
        this.f48909b = c7568hI;
        this.f48910c = c7568hI;
        b();
        a();
        this.f48913f.remove(this.f48911d.f48522b);
        this.f48911d = null;
    }
}
