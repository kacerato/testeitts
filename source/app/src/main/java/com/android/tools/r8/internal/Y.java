package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class Y extends AbstractC6516b0 {

    public static final boolean f45885e = true;

    public int f45886b;

    public int f45887c = -1;

    public final Z f45888d;

    public Y(Z z10, int i10) {
        this.f45888d = z10;
        this.f45886b = i10;
    }

    @Override
    public final void a(int i10) {
        if (this.f45887c == -1) {
            throw new IllegalStateException();
        }
        Z z10 = this.f45888d;
        int i11 = this.f45886b;
        this.f45886b = i11 + 1;
        z10.b(i11, i10);
        this.f45887c = -1;
        if (f45885e) {
            return;
        }
        this.f45888d.a();
    }

    @Override
    public final void b(int i10) {
        int i11 = this.f45887c;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        this.f45888d.c(i11, i10);
    }

    @Override
    public final int c() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        Z z10 = this.f45888d;
        AbstractC6349a0 abstractC6349a0 = z10.f46137b;
        int i10 = z10.f46138c;
        int i11 = this.f45886b - 1;
        this.f45886b = i11;
        this.f45887c = i11;
        return abstractC6349a0.c(i10 + i11);
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f45886b;
        Z z10 = this.f45888d;
        return i10 < z10.f46139d - z10.f46138c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f45886b > 0;
    }

    @Override
    public final int nextIndex() {
        return this.f45886b;
    }

    @Override
    public final int previousIndex() {
        return this.f45886b - 1;
    }

    @Override
    public final int r() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Z z10 = this.f45888d;
        AbstractC6349a0 abstractC6349a0 = z10.f46137b;
        int i10 = z10.f46138c;
        int i11 = this.f45886b;
        this.f45886b = i11 + 1;
        this.f45887c = i11;
        return abstractC6349a0.c(i10 + i11);
    }

    @Override
    public final void remove() {
        int i10 = this.f45887c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f45888d.i(i10);
        int i11 = this.f45887c;
        int i12 = this.f45886b;
        if (i11 < i12) {
            this.f45886b = i12 - 1;
        }
        this.f45887c = -1;
        if (f45885e) {
            return;
        }
        this.f45888d.a();
    }
}
