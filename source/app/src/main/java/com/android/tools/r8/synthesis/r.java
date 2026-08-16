package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.synthesis.S;
import java.util.function.Function;

public final class r extends AbstractC11588o {

    public static final boolean f58320e = true;

    public r(S.b bVar, C11579l c11579l, M2 m22) {
        super(bVar, c11579l, m22);
    }

    @Override
    public final r a(C11579l c11579l, R00 r00) {
        boolean z10 = f58320e;
        if (!z10) {
            M2 m22 = this.f58310d;
            r00.getClass();
            if (m22 != r00.c(AbstractC5308Hz.g(), m22)) {
                throw new AssertionError((Object) ("Unexpected classpath rewrite of type " + this.f58310d.j0()));
            }
        }
        if (z10 || this.f58223b == c11579l) {
            return this;
        }
        throw new AssertionError((Object) ("Unexpected classpath rewrite of context type " + ((Object) this.f58223b)));
    }

    @Override
    public final AbstractC11602t a(Function function) {
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) function.apply(this.f58310d);
        if (e02 == null) {
            return null;
        }
        if (!f58320e && !(e02 instanceof com.android.tools.r8.graph.I0)) {
            throw new AssertionError();
        }
        return new C11594q(this.f58222a, this.f58223b, e02.k());
    }
}
