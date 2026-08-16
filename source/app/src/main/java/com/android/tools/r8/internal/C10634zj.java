package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Predicate;

public final class C10634zj extends AbstractC4591n0 {

    public final Predicate f54474f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C10634zj(C4798y c4798y, com.android.tools.r8.graph.H5 h52, Predicate predicate) {
        super(c4798y, h52, r0);
        Boolean bool = Boolean.FALSE;
        this.f54474f = predicate;
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        if (this.f54474f.test(m22)) {
            this.f37241e = Boolean.TRUE;
            a();
        }
    }
}
