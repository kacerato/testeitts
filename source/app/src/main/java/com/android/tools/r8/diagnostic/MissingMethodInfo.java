package com.android.tools.r8.diagnostic;

import com.android.tools.r8.references.MethodReference;

public interface MissingMethodInfo extends MissingDefinitionInfo {
    @Override
    default MissingMethodInfo asMissingMethod() {
        return this;
    }

    @Override
    String getDiagnosticMessage();

    MethodReference getMethodReference();

    @Override
    default boolean isMissingMethod() {
        return true;
    }
}
