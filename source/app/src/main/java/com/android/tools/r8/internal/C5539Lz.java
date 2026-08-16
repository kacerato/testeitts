package com.android.tools.r8.internal;

import java.util.concurrent.atomic.AtomicLong;

public final class C5539Lz extends AbstractC9997vt0 {

    public final AbstractC9997vt0 f42113a;

    public C5539Lz(AbstractC9997vt0 abstractC9997vt0) {
        this.f42113a = abstractC9997vt0;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        this.f42113a.a(c9075qL, Long.valueOf(((AtomicLong) obj).get()));
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        return new AtomicLong(((Number) this.f42113a.a(c8240lL)).longValue());
    }
}
