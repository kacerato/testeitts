package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class C8578nN extends AbstractC9245rN {

    public static final C8578nN f50939b = new C8578nN();

    @Override
    public final void a(AbstractC9579tN abstractC9579tN) {
        C10412yM c10412yM = (C10412yM) abstractC9579tN;
        c10412yM.f53995a.g();
        if (c10412yM.f53997c.e0()) {
            c10412yM.f53995a.a().s();
        }
    }

    @Override
    public final void a(C6415aP c6415aP) {
        c6415aP.f46512b.add(EnumC6582bP.f46757d);
    }

    @Override
    public final KeepSpecProtos.ConstraintElement a() {
        return KeepSpecProtos.ConstraintElement.CONSTRAINT_NAME;
    }
}
