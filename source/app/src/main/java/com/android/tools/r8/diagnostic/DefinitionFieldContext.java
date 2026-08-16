package com.android.tools.r8.diagnostic;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.FieldReference;

public interface DefinitionFieldContext extends DefinitionContext {
    @Override
    default DefinitionFieldContext asFieldContext() {
        return this;
    }

    FieldReference getFieldReference();

    @Override
    Origin getOrigin();

    @Override
    default boolean isFieldContext() {
        return true;
    }
}
