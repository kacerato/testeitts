package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class C8912pN extends AbstractC9245rN {

    public static final C8912pN f51508b = new C8912pN();

    @Override
    public final void a(C6415aP c6415aP) {
    }

    @Override
    public final void a(AbstractC9579tN abstractC9579tN) {
        abstractC9579tN.getClass();
    }

    @Override
    public final KeepSpecProtos.ConstraintElement a() {
        return KeepSpecProtos.ConstraintElement.CONSTRAINT_VISIBILITY_RELAX;
    }
}
