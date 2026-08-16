package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12417v3 implements Runnable {

    public final C12310i f63637b;

    public final R3 f63638c;

    public RunnableC12417v3(R3 r32, C12310i c12310i) {
        this.f63637b = c12310i;
        Objects.requireNonNull(r32);
        this.f63638c = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f63638c;
        r32.i1().D();
        C12310i c12310i = this.f63637b;
        if (c12310i.f63340d.n() == null) {
            r32.i1().k0(c12310i);
        } else {
            r32.i1().i0(c12310i);
        }
    }
}
