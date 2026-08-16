package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxyResult;
import java.util.function.Supplier;
import java.util.stream.Stream;

public final class C6801ck0 implements RetraceStackTraceElementProxyResult {

    public final Stream f47150a;

    public final Supplier f47151b;

    public C6801ck0(Stream stream, Supplier supplier) {
        this.f47150a = stream;
        this.f47151b = supplier;
    }

    public final C6635bk0 a() {
        C6635bk0 c6635bk0 = new C6635bk0();
        c6635bk0.f46851a = this.f47151b;
        return c6635bk0;
    }

    @Override
    public final RetraceStackTraceContext getResultContext() {
        return (RetraceStackTraceContext) this.f47151b.get();
    }

    @Override
    public final Stream stream() {
        return this.f47150a;
    }
}
