package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class b extends PrimitiveReference {
    public b() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_BYTE;
    }
}
