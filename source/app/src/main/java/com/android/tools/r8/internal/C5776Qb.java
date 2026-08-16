package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C5776Qb extends AbstractC5718Pb {

    public final char f43631b;

    public C5776Qb(char c10) {
        this.f43631b = c10;
    }

    @Override
    public final boolean b(char c10) {
        return c10 == this.f43631b;
    }

    @Override
    public final Predicate negate() {
        return new C5834Rb(this.f43631b);
    }

    public final String toString() {
        return "CharMatcher.is('" + AbstractC6123Wb.a(this.f43631b) + "')";
    }

    @Override
    public final AbstractC6123Wb negate() {
        return new C5834Rb(this.f43631b);
    }
}
