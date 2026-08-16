package com.android.tools.r8.shaking;

import java.util.function.Predicate;

public final class C6 implements Predicate {

    public final AbstractC11250i4 f56374b;

    public C6(AbstractC11250i4 abstractC11250i4) {
        this.f56374b = abstractC11250i4;
    }

    @Override
    public final boolean test(Object obj) {
        return this.f56374b.b((com.android.tools.r8.graph.M2) obj);
    }
}
