package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.diagnostic.internal.AbstractC4327b;
import com.android.tools.r8.origin.Origin;

abstract class AbstractC4327b<B extends AbstractC4327b<B>> {

    public static final boolean f35992b = true;

    public Origin f35993a;

    public abstract DefinitionContext a();

    public AbstractC4327b a(Origin origin) {
        this.f35993a = origin;
        return b();
    }

    public abstract AbstractC4327b b();
}
