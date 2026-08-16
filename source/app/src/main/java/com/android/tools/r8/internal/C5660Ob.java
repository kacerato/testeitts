package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C5660Ob extends AbstractC5892Sb {

    public static final C5660Ob f42932c = new C5660Ob();

    public C5660Ob() {
        super("CharMatcher.any()");
    }

    @Override
    public final boolean b(char c10) {
        return true;
    }

    @Override
    public final Predicate negate() {
        return C6008Ub.f44798c;
    }

    @Override
    public final AbstractC6123Wb negate() {
        return C6008Ub.f44798c;
    }
}
