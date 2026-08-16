package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C6852d1 extends AbstractC7352g1 {

    public static final boolean f47249e = true;

    public int f47250b;

    public int f47251c = -1;

    public final C7018e1 f47252d;

    public C6852d1(C7018e1 c7018e1, int i10) {
        this.f47252d = c7018e1;
        this.f47250b = i10;
    }

    @Override
    public final void add(Object obj) {
        if (this.f47251c == -1) {
            throw new IllegalStateException();
        }
        C7018e1 c7018e1 = this.f47252d;
        int i10 = this.f47250b;
        this.f47250b = i10 + 1;
        c7018e1.add(i10, obj);
        this.f47251c = -1;
        if (f47249e) {
            return;
        }
        this.f47252d.a();
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f47250b;
        C7018e1 c7018e1 = this.f47252d;
        return i10 < c7018e1.f47577d - c7018e1.f47576c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f47250b > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C7018e1 c7018e1 = this.f47252d;
        AbstractC7185f1 abstractC7185f1 = c7018e1.f47575b;
        int i10 = c7018e1.f47576c;
        int i11 = this.f47250b;
        this.f47250b = i11 + 1;
        this.f47251c = i11;
        return abstractC7185f1.get(i10 + i11);
    }

    @Override
    public final int nextIndex() {
        return this.f47250b;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        C7018e1 c7018e1 = this.f47252d;
        AbstractC7185f1 abstractC7185f1 = c7018e1.f47575b;
        int i10 = c7018e1.f47576c;
        int i11 = this.f47250b - 1;
        this.f47250b = i11;
        this.f47251c = i11;
        return abstractC7185f1.get(i10 + i11);
    }

    @Override
    public final int previousIndex() {
        return this.f47250b - 1;
    }

    @Override
    public final void remove() {
        int i10 = this.f47251c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f47252d.remove(i10);
        int i11 = this.f47251c;
        int i12 = this.f47250b;
        if (i11 < i12) {
            this.f47250b = i12 - 1;
        }
        this.f47251c = -1;
        if (f47249e) {
            return;
        }
        this.f47252d.a();
    }

    @Override
    public final void set(Object obj) {
        int i10 = this.f47251c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f47252d.set(i10, obj);
    }
}
