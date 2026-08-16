package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C6008Ub extends AbstractC5892Sb {

    public static final C6008Ub f44798c = new C6008Ub();

    public C6008Ub() {
        super("CharMatcher.none()");
    }

    @Override
    public final boolean b(char c10) {
        return false;
    }

    @Override
    public final Predicate negate() {
        return C5660Ob.f42932c;
    }

    @Override
    public final AbstractC6123Wb negate() {
        return C5660Ob.f42932c;
    }
}
