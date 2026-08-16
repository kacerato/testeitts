package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class f extends PrimitiveReference {
    public f() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_FLOAT;
    }
}
