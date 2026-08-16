package com.android.tools.r8.graph;

import com.android.tools.r8.internal.V60;
import java.util.function.Predicate;

public final class C4466g7 implements V60 {

    public final Predicate f37242b;

    public C4466g7(Predicate predicate) {
        this.f37242b = predicate;
    }

    @Override
    public final boolean apply(Object obj) {
        return this.f37242b.test((C4516j1) obj);
    }
}
