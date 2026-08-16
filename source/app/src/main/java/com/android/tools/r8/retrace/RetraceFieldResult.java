package com.android.tools.r8.retrace;

import java.util.function.Function;
import java.util.stream.Stream;

public interface RetraceFieldResult extends RetraceResult<RetraceFieldElement> {
    @Override
    default Stream flatMap(Function function) {
        return super.flatMap(function);
    }

    @Override
    boolean isEmpty();
}
