package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.R00;
import java.util.Set;
import java.util.function.Function;

public final class L4 {

    public final Set f56698a;

    public final Set f56699b;

    public final Set f56700c;

    public L4(Set set, Set set2, Set set3) {
        this.f56698a = set;
        this.f56699b = set2;
        this.f56700c = set3;
    }

    public final L4 a(final R00 r00, final AbstractC5308Hz abstractC5308Hz) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 c10;
                c10 = R00.this.c(abstractC5308Hz, (com.android.tools.r8.graph.M2) obj);
                return c10;
            }
        };
        return new L4(C4875Al0.a(this.f56698a, function), C4875Al0.a(this.f56699b, function), C4875Al0.a(this.f56700c, function));
    }
}
