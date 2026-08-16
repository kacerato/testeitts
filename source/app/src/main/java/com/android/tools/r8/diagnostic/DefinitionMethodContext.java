package com.android.tools.r8.diagnostic;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.MethodReference;

public interface DefinitionMethodContext extends DefinitionContext {
    @Override
    default DefinitionMethodContext asMethodContext() {
        return this;
    }

    MethodReference getMethodReference();

    @Override
    Origin getOrigin();

    @Override
    default boolean isMethodContext() {
        return true;
    }
}
