package com.android.tools.r8.diagnostic;

import com.android.tools.r8.references.ClassReference;

public interface MissingClassInfo extends MissingDefinitionInfo {
    @Override
    default MissingClassInfo asMissingClass() {
        return this;
    }

    ClassReference getClassReference();

    @Override
    String getDiagnosticMessage();

    @Override
    default boolean isMissingClass() {
        return true;
    }
}
