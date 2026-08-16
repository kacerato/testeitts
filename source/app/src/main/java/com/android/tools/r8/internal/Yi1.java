package com.android.tools.r8.internal;

import java.util.Set;
import java.util.function.Predicate;

public final class Yi1 implements Predicate {

    public final Set f46070b;

    public Yi1(Set set) {
        this.f46070b = set;
    }

    @Override
    public final boolean test(Object obj) {
        return this.f46070b.contains((String) obj);
    }
}
