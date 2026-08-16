package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class a extends PrimitiveReference {
    public a() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_BOOLEAN;
    }
}
