package com.android.tools.r8.retrace;

public interface RetraceFieldElement extends RetraceElement<RetraceFieldResult> {
    RetraceClassElement getClassElement();

    RetracedFieldReference getField();

    @Override
    RetraceFieldResult getParentResult();

    RetracedSourceFile getSourceFile();

    boolean isUnknown();
}
