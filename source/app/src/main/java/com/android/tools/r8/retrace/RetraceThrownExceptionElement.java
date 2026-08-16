package com.android.tools.r8.retrace;

public interface RetraceThrownExceptionElement extends RetraceElement<RetraceThrownExceptionResult> {
    RetraceStackTraceContext getContext();

    @Override
    RetraceThrownExceptionResult getParentResult();

    RetracedClassReference getRetracedClass();

    RetracedSourceFile getSourceFile();
}
