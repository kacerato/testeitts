package com.android.tools.r8.internal;

import java.util.concurrent.atomic.AtomicBoolean;

public final class C7665hu0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.a(((AtomicBoolean) obj).get());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        return new AtomicBoolean(c8240lL.m());
    }
}
