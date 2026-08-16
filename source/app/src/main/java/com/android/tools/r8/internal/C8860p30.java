package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C8860p30 extends AbstractC7352g1 {

    public int f51428b;

    public int f51429c = -1;

    public final C9027q30 f51430d;

    public C8860p30(C9027q30 c9027q30, int i10) {
        this.f51430d = c9027q30;
        this.f51428b = i10;
    }

    @Override
    public final void add(Object obj) {
        C9027q30 c9027q30 = this.f51430d;
        int i10 = this.f51428b;
        this.f51428b = i10 + 1;
        c9027q30.add(i10, obj);
        this.f51429c = -1;
    }

    @Override
    public final boolean hasNext() {
        return this.f51428b < this.f51430d.f51704c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f51428b > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f51430d.f51703b;
        int i10 = this.f51428b;
        this.f51428b = i10 + 1;
        this.f51429c = i10;
        return objArr[i10];
    }

    @Override
    public final int nextIndex() {
        return this.f51428b;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f51430d.f51703b;
        int i10 = this.f51428b - 1;
        this.f51428b = i10;
        this.f51429c = i10;
        return objArr[i10];
    }

    @Override
    public final int previousIndex() {
        return this.f51428b - 1;
    }

    @Override
    public final void remove() {
        int i10 = this.f51429c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f51430d.remove(i10);
        int i11 = this.f51429c;
        int i12 = this.f51428b;
        if (i11 < i12) {
            this.f51428b = i12 - 1;
        }
        this.f51429c = -1;
    }

    @Override
    public final void set(Object obj) {
        int i10 = this.f51429c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f51430d.set(i10, obj);
    }
}
