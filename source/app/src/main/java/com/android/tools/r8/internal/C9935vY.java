package com.android.tools.r8.internal;

import java.util.concurrent.atomic.AtomicInteger;

public final class C9935vY extends E00 {

    public static final boolean f53137d = true;

    public final AtomicInteger f53138c;

    public C9935vY(com.android.tools.r8.graph.H5 h52) {
        super(h52);
        this.f53138c = new AtomicInteger();
    }

    @Override
    public final void a(E00 e00, boolean z10) {
        if (!f53137d && b().f1()) {
            throw new AssertionError();
        }
        this.f53138c.incrementAndGet();
    }

    @Override
    public final void a(E00 e00) {
        throw new C5417Jv0();
    }
}
