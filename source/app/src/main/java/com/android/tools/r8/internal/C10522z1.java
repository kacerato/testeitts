package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C10522z1 extends AbstractC7352g1 {

    public static final boolean f54259e = true;

    public int f54260b;

    public int f54261c = -1;

    public final A1 f54262d;

    public C10522z1(A1 a12, int i10) {
        this.f54262d = a12;
        this.f54260b = i10;
    }

    @Override
    public final void add(Object obj) {
        if (this.f54261c == -1) {
            throw new IllegalStateException();
        }
        A1 a12 = this.f54262d;
        int i10 = this.f54260b;
        this.f54260b = i10 + 1;
        a12.add(i10, obj);
        this.f54261c = -1;
        if (f54259e) {
            return;
        }
        this.f54262d.a();
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f54260b;
        A1 a12 = this.f54262d;
        return i10 < a12.f38504d - a12.f38503c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f54260b > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        A1 a12 = this.f54262d;
        B1 b12 = a12.f38502b;
        int i10 = a12.f38503c;
        int i11 = this.f54260b;
        this.f54260b = i11 + 1;
        this.f54261c = i11;
        return b12.get(i10 + i11);
    }

    @Override
    public final int nextIndex() {
        return this.f54260b;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        A1 a12 = this.f54262d;
        B1 b12 = a12.f38502b;
        int i10 = a12.f38503c;
        int i11 = this.f54260b - 1;
        this.f54260b = i11;
        this.f54261c = i11;
        return b12.get(i10 + i11);
    }

    @Override
    public final int previousIndex() {
        return this.f54260b - 1;
    }

    @Override
    public final void remove() {
        int i10 = this.f54261c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f54262d.remove(i10);
        int i11 = this.f54261c;
        int i12 = this.f54260b;
        if (i11 < i12) {
            this.f54260b = i12 - 1;
        }
        this.f54261c = -1;
        if (f54259e) {
            return;
        }
        this.f54262d.a();
    }

    @Override
    public final void set(Object obj) {
        int i10 = this.f54261c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f54262d.set(i10, obj);
    }
}
