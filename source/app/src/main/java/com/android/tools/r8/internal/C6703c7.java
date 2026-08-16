package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C6703c7 extends AbstractC7847j {

    public final boolean f46978b;

    public int f46979c;

    public C6703c7(boolean z10) {
        this.f46978b = z10;
    }

    @Override
    public final boolean a() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        this.f46979c = 0;
        return this.f46978b;
    }

    @Override
    public final boolean hasNext() {
        return this.f46979c == 0;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f46979c == 1;
    }

    @Override
    public final int nextIndex() {
        return this.f46979c;
    }

    @Override
    public final int previousIndex() {
        return this.f46979c - 1;
    }

    @Override
    public final boolean q() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f46979c = 1;
        return this.f46978b;
    }
}
