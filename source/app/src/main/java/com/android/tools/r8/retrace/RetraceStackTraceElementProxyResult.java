package com.android.tools.r8.retrace;

import com.android.tools.r8.retrace.StackTraceElementProxy;
import java.util.stream.Stream;

public interface RetraceStackTraceElementProxyResult<T, ST extends StackTraceElementProxy<T, ST>> {
    RetraceStackTraceContext getResultContext();

    Stream<? extends RetraceStackTraceElementProxy<T, ST>> stream();
}
