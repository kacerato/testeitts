package com.android.tools.r8.retrace;

import com.android.tools.r8.retrace.RetraceResult;

public interface RetraceElement<R extends RetraceResult<?>> {
    R getParentResult();

    boolean isCompilerSynthesized();
}
