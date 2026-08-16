package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetracedFieldReference;

public abstract class AbstractC8802ok0 implements RetracedFieldReference {
    @Override
    public final boolean isKnown() {
        return this instanceof C8468mk0;
    }

    @Override
    public boolean isUnknown() {
        return !(this instanceof C8468mk0);
    }
}
