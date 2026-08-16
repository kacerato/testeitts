package com.android.tools.r8.retrace;

import java.util.List;
import java.util.function.Consumer;

public interface RetraceStackTraceResult<T> extends RetraceResultWithContext {
    void forEach(Consumer<RetraceStackFrameAmbiguousResult<T>> consumer);

    List<RetraceStackFrameAmbiguousResult<T>> getResult();

    boolean isEmpty();
}
