package com.android.tools.r8.retrace;

public interface RetraceMethodElement extends RetraceElement<RetraceMethodResult> {
    RetraceClassElement getClassElement();

    @Override
    RetraceMethodResult getParentResult();

    RetracedMethodReference getRetracedMethod();

    RetracedSourceFile getSourceFile();

    boolean isUnknown();
}
