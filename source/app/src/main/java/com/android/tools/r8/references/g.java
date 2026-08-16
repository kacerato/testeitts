package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class g extends PrimitiveReference {
    public g() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_LONG;
    }
}
