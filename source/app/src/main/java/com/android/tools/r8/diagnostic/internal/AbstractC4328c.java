package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.origin.Origin;

public abstract class AbstractC4328c implements DefinitionContext {

    public final Origin f35994a;

    public AbstractC4328c(Origin origin) {
        this.f35994a = origin;
    }

    @Override
    public final Origin getOrigin() {
        return this.f35994a;
    }
}
