package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Set;

public final class C7910jN extends AbstractC9245rN {

    public static final C7910jN f49217b = new C7910jN();

    @Override
    public final void a(AbstractC9579tN abstractC9579tN) {
        ((C10412yM) abstractC9579tN).f53995a.j();
    }

    @Override
    public final void a(C6415aP c6415aP) {
        c6415aP.f46512b.add(EnumC6582bP.f46760g);
    }

    @Override
    public final void a(Set set) {
        set.add(KM.f41648c);
    }

    @Override
    public final KeepSpecProtos.ConstraintElement a() {
        return KeepSpecProtos.ConstraintElement.CONSTRAINT_GENERIC_SIGNATURE;
    }
}
