package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C5950Tb extends AbstractC6123Wb {

    public final AbstractC5718Pb f44500b;

    public C5950Tb(AbstractC5718Pb abstractC5718Pb) {
        this.f44500b = abstractC5718Pb;
    }

    @Override
    public final boolean apply(Object obj) {
        return b(((Character) obj).charValue());
    }

    @Override
    public final boolean b(char c10) {
        return !this.f44500b.b(c10);
    }

    @Override
    public final Predicate negate() {
        return this.f44500b;
    }

    public final String toString() {
        return ((Object) this.f44500b) + ".negate()";
    }
}
