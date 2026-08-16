package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C7258fU extends AbstractC8516n0 {

    public int f47992b;

    public int f47993c = -1;

    public final C7425gU f47994d;

    public C7258fU(C7425gU c7425gU, int i10) {
        this.f47994d = c7425gU;
        this.f47992b = i10;
    }

    @Override
    public final long a() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        long[] jArr = this.f47994d.f48268b;
        int i10 = this.f47992b - 1;
        this.f47992b = i10;
        this.f47993c = i10;
        return jArr[i10];
    }

    @Override
    public final void b(long j10) {
        int i10 = this.f47993c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f47994d.b(i10, j10);
    }

    @Override
    public final boolean hasNext() {
        return this.f47992b < this.f47994d.f48269c;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f47992b > 0;
    }

    @Override
    public final long l() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        long[] jArr = this.f47994d.f48268b;
        int i10 = this.f47992b;
        this.f47992b = i10 + 1;
        this.f47993c = i10;
        return jArr[i10];
    }

    @Override
    public final int nextIndex() {
        return this.f47992b;
    }

    @Override
    public final int previousIndex() {
        return this.f47992b - 1;
    }

    @Override
    public final void remove() {
        int i10 = this.f47993c;
        if (i10 == -1) {
            throw new IllegalStateException();
        }
        this.f47994d.f(i10);
        int i11 = this.f47993c;
        int i12 = this.f47992b;
        if (i11 < i12) {
            this.f47992b = i12 - 1;
        }
        this.f47993c = -1;
    }

    @Override
    public final void a(long j10) {
        C7425gU c7425gU = this.f47994d;
        int i10 = this.f47992b;
        this.f47992b = i10 + 1;
        c7425gU.a(i10, j10);
        this.f47993c = -1;
    }
}
