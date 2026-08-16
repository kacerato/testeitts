package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class c extends PrimitiveReference {
    public c() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_CHAR;
    }
}
