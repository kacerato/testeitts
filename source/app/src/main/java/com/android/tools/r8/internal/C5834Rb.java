package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C5834Rb extends AbstractC5718Pb {

    public final char f43940b;

    public C5834Rb(char c10) {
        this.f43940b = c10;
    }

    @Override
    public final boolean b(char c10) {
        return c10 != this.f43940b;
    }

    @Override
    public final Predicate negate() {
        return new C5776Qb(this.f43940b);
    }

    public final String toString() {
        return "CharMatcher.isNot('" + AbstractC6123Wb.a(this.f43940b) + "')";
    }

    @Override
    public final AbstractC6123Wb negate() {
        return new C5776Qb(this.f43940b);
    }
}
