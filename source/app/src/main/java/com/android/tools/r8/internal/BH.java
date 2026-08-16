package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class BH extends AbstractC6516b0 {

    public int f38871b;

    public int f38872c = -1;

    public final CH f38873d;

    public BH(CH ch2, int i10) {
        this.f38873d = ch2;
        this.f38871b = i10;
    }

    @Override
    public final void a(int i10) {
        CH ch2 = this.f38873d;
        int i11 = this.f38871b;
        this.f38871b = i11 + 1;
        ch2.b(i11, i10);
        this.f38872c = -1;
    }

    @Override
    public final void b(int i10) {
        int i11 = this.f38872c;
        if (i11 == -1) {
            throw new IllegalStateException();
        }
        this.f38873d.c(i11, i10);
    }

    @Override
    public final int c() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f38873d.f39176b;
        int i10 = this.f38871b - 1;
        this.f38871b = i10;
        this.f38872c = i10;
        return iArr[i10];
    }

    @Override
    public final boolean hasNext() {
        return this.f38871b < this.f38873d.f39177c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f38871b > 0;
    }

    @Override
    public final int nextIndex() {
        return this.f38871b;
    }

    @Override
    public final int previousIndex() {
        return this.f38871b - 1;
    }

    @Override
    public final int r() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f38873d.f39176b;
        int i10 = this.f38871b;
        this.f38871b = i10 + 1;
        this.f38872c = i10;
        return iArr[i10];
    }

    @Override
    public final void remove() {
        int i10 = this.f38872c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f38873d.i(i10);
        int i11 = this.f38872c;
        int i12 = this.f38871b;
        if (i11 < i12) {
            this.f38871b = i12 - 1;
        }
        this.f38872c = -1;
    }
}
