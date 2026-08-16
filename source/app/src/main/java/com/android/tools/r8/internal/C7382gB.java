package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C7382gB implements AE {

    public static final boolean f48205d = true;

    public final Z5 f48206b;

    public Y5 f48207c;

    public C7382gB(C7215fB c7215fB) {
        Z5 u10 = c7215fB.u();
        this.f48206b = u10;
        this.f48207c = u10.next().I();
    }

    @Override
    public final boolean hasNext() {
        return this.f48207c.hasNext() || this.f48206b.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.f48207c.hasPrevious() || this.f48206b.hasPrevious();
    }

    @Override
    public final AbstractC10561zE next() {
        if (this.f48207c.hasNext()) {
            return this.f48207c.next();
        }
        if (!this.f48206b.hasNext()) {
            throw new NoSuchElementException();
        }
        Y5 I10 = this.f48206b.next().I();
        this.f48207c = I10;
        if (f48205d || I10.hasNext()) {
            return this.f48207c.next();
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC10561zE previous() {
        if (this.f48207c.hasPrevious()) {
            return this.f48207c.previous();
        }
        if (!this.f48206b.hasPrevious()) {
            throw new NoSuchElementException();
        }
        W5 previous = this.f48206b.previous();
        Y5 b10 = previous.b(previous.l().size());
        this.f48207c = b10;
        if (f48205d || b10.hasPrevious()) {
            return this.f48207c.previous();
        }
        throw new AssertionError();
    }
}
