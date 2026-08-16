package com.android.tools.r8.retrace;

import com.android.tools.r8.internal.C5806Qn0;
import com.android.tools.r8.retrace.StackTraceElementProxy;

public interface StackTraceElementProxyRetracer<T, ST extends StackTraceElementProxy<T, ST>> {
    static <T, ST extends StackTraceElementProxy<T, ST>> StackTraceElementProxyRetracer<T, ST> createDefault(Retracer retracer) {
        return new C5806Qn0(retracer);
    }

    RetraceStackTraceElementProxyResult<T, ST> retrace(ST st, RetraceStackTraceContext retraceStackTraceContext);
}
