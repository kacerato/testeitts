package com.android.tools.r8.internal;

import java.util.Set;
import java.util.function.Predicate;

public final class C6684c01 implements Predicate {

    public final Set f46934b;

    public C6684c01(Set set) {
        this.f46934b = set;
    }

    @Override
    public final boolean test(Object obj) {
        return this.f46934b.contains((W5) obj);
    }
}
