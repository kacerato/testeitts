package com.android.tools.r8.internal;

public abstract class AbstractC5718Pb extends AbstractC6123Wb {
    @Override
    public final boolean apply(Object obj) {
        return b(((Character) obj).charValue());
    }

    @Override
    public AbstractC6123Wb negate() {
        return new C5950Tb(this);
    }
}
