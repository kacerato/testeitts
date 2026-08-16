package com.android.tools.r8.internal;

import java.util.concurrent.atomic.AtomicInteger;

public final class C7498gu0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.a(((AtomicInteger) obj).get());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        try {
            return new AtomicInteger(c8240lL.o());
        } catch (NumberFormatException e10) {
            throw new C8407mL(e10);
        }
    }
}
