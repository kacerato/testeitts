package com.android.tools.r8.retrace;

public interface RetraceTypeElement extends RetraceElement<RetraceTypeResult> {
    @Override
    RetraceTypeResult getParentResult();

    RetracedTypeReference getType();
}
