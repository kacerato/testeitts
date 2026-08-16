package com.android.tools.r8.retrace;

public interface RetraceStackFrameResultWithContext<T> extends RetraceStackFrameResult<T>, RetraceResultWithContext {
    @Override
    boolean isEmpty();

    @Override
    int size();
}
