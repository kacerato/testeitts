package com.android.tools.r8.graph;

import com.android.tools.r8.internal.V60;
import java.util.function.Predicate;

public final class C4485h7 implements V60 {

    public final Predicate f37274b;

    public C4485h7(Predicate predicate) {
        this.f37274b = predicate;
    }

    @Override
    public final boolean apply(Object obj) {
        return this.f37274b.test((C4460g1) obj);
    }
}
