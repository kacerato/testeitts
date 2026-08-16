package com.android.tools.r8.diagnostic;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.ClassReference;

public interface DefinitionClassContext extends DefinitionContext {
    @Override
    default DefinitionClassContext asClassContext() {
        return this;
    }

    ClassReference getClassReference();

    @Override
    Origin getOrigin();

    @Override
    default boolean isClassContext() {
        return true;
    }
}
