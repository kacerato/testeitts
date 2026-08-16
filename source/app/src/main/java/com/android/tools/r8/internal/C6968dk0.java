package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceStackTraceResult;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

public final class C6968dk0 implements RetraceStackTraceResult {

    public final ArrayList f47491a;

    public final RetraceStackTraceContext f47492b;

    public C6968dk0(ArrayList arrayList, RetraceStackTraceContext retraceStackTraceContext) {
        this.f47491a = arrayList;
        this.f47492b = retraceStackTraceContext;
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f47491a.forEach(consumer);
    }

    @Override
    public final RetraceStackTraceContext getContext() {
        return this.f47492b;
    }

    @Override
    public final List getResult() {
        return this.f47491a;
    }

    @Override
    public final boolean isEmpty() {
        return this.f47491a.isEmpty();
    }
}
