package com.android.tools.r8.retrace;

import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Stream;

public interface RetraceFrameElement extends RetraceElement<RetraceFrameResult> {
    void forEach(Consumer<RetracedSingleFrame> consumer);

    void forEachRewritten(Consumer<RetracedSingleFrame> consumer);

    RetraceClassElement getClassElement();

    List<? extends RetracedMethodReference> getOuterFrames();

    @Override
    RetraceFrameResult getParentResult();

    RetraceStackTraceContext getRetraceStackTraceContext();

    RetracedSourceFile getSourceFile(RetracedClassMemberReference retracedClassMemberReference);

    RetracedMethodReference getTopFrame();

    boolean isUnknown();

    Stream<RetracedSingleFrame> stream();

    Stream<RetracedSingleFrame> streamRewritten(RetraceStackTraceContext retraceStackTraceContext);
}
