package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackFrameResultWithContext;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import java.util.List;
import java.util.function.Consumer;

public final class C6201Xj0 implements RetraceStackFrameResultWithContext {

    public final RetraceStackTraceContext f45809a;

    public final List f45810b;

    public C6201Xj0(List list, RetraceStackTraceContext retraceStackTraceContext) {
        this.f45810b = list;
        this.f45809a = retraceStackTraceContext;
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f45810b.forEach(consumer);
    }

    @Override
    public final Object get(int i10) {
        return this.f45810b.get(i10);
    }

    @Override
    public final RetraceStackTraceContext getContext() {
        return this.f45809a;
    }

    @Override
    public final List getResult() {
        return this.f45810b;
    }

    @Override
    public final boolean isEmpty() {
        return this.f45810b.isEmpty();
    }

    @Override
    public final int size() {
        return this.f45810b.size();
    }
}
