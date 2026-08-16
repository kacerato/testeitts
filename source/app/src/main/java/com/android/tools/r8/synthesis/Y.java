package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.synthesis.S;
import java.util.function.Function;

public final class Y extends AbstractC11588o implements InterfaceC11576k {

    public static final boolean f58218e = true;

    public Y(S.b bVar, C11579l c11579l, M2 m22) {
        super(bVar, c11579l, m22);
    }

    @Override
    public final AbstractC11602t a(Function function) {
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) function.apply(this.f58310d);
        if (e02 == null) {
            return null;
        }
        if (f58218e || e02.e0()) {
            return new X(this.f58222a, this.f58223b, e02.d0());
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC11547a0 a(C11579l c11579l, R00 r00) {
        M2 m22 = this.f58310d;
        r00.getClass();
        M2 c10 = r00.c(AbstractC5308Hz.g(), m22);
        M2 m23 = this.f58310d;
        if (m23 == c10 || r00.a(m23, c10)) {
            return (c11579l == this.f58223b && c10 == this.f58310d) ? this : new Y(this.f58222a, c11579l, c10);
        }
        return null;
    }
}
