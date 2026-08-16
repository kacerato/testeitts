package com.android.tools.r8.diagnostic;

import com.android.tools.r8.references.FieldReference;

public interface MissingFieldInfo extends MissingDefinitionInfo {
    @Override
    default MissingFieldInfo asMissingField() {
        return this;
    }

    @Override
    String getDiagnosticMessage();

    FieldReference getFieldReference();

    @Override
    default boolean isMissingField() {
        return true;
    }
}
