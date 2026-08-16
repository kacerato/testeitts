package com.android.tools.r8.retrace;

import java.util.List;
import java.util.function.BiConsumer;

public interface RetraceStackFrameAmbiguousResultWithContext<T> extends RetraceStackFrameAmbiguousResult<T>, RetraceResultWithContext {
    @Override
    void forEachWithIndex(BiConsumer biConsumer);

    @Override
    List getAmbiguousResult();
}
