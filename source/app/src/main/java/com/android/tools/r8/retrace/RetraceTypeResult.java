package com.android.tools.r8.retrace;

import java.util.function.Function;
import java.util.stream.Stream;

public interface RetraceTypeResult extends RetraceResult<RetraceTypeElement> {
    @Override
    default Stream flatMap(Function function) {
        return super.flatMap(function);
    }

    @Override
    boolean isEmpty();
}
