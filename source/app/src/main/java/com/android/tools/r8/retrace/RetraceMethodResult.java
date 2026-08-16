package com.android.tools.r8.retrace;

import java.util.OptionalInt;
import java.util.function.Function;
import java.util.stream.Stream;

public interface RetraceMethodResult extends RetraceResult<RetraceMethodElement> {
    @Override
    default Stream flatMap(Function function) {
        return super.flatMap(function);
    }

    @Override
    boolean isEmpty();

    RetraceFrameResult narrowByPosition(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt);
}
