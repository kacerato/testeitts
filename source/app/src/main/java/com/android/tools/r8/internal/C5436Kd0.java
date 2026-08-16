package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C5436Kd0 extends AbstractC7352g1 {

    public int f41720b;

    public int f41721c = -1;

    public final C5494Ld0 f41722d;

    public C5436Kd0(C5494Ld0 c5494Ld0, int i10) {
        this.f41722d = c5494Ld0;
        this.f41720b = i10;
    }

    @Override
    public final void add(Object obj) {
        C5494Ld0 c5494Ld0 = this.f41722d;
        int i10 = this.f41720b;
        this.f41720b = i10 + 1;
        c5494Ld0.add(i10, obj);
        this.f41721c = -1;
    }

    @Override
    public final boolean hasNext() {
        return this.f41720b < this.f41722d.f42026c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f41720b > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f41722d.f42025b;
        int i10 = this.f41720b;
        this.f41720b = i10 + 1;
        this.f41721c = i10;
        return objArr[i10];
    }

    @Override
    public final int nextIndex() {
        return this.f41720b;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f41722d.f42025b;
        int i10 = this.f41720b - 1;
        this.f41720b = i10;
        this.f41721c = i10;
        return objArr[i10];
    }

    @Override
    public final int previousIndex() {
        return this.f41720b - 1;
    }

    @Override
    public final void remove() {
        int i10 = this.f41721c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f41722d.remove(i10);
        int i11 = this.f41721c;
        int i12 = this.f41720b;
        if (i11 < i12) {
            this.f41720b = i12 - 1;
        }
        this.f41721c = -1;
    }

    @Override
    public final void set(Object obj) {
        int i10 = this.f41721c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f41722d.set(i10, obj);
    }
}
