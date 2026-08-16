package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.function.Function;

public final class LR0 implements Function {
    @Override
    public final Object apply(Object obj) {
        return ((Collection) obj).iterator();
    }
}
