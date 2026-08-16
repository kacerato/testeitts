package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class h extends PrimitiveReference {
    public h() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_DOUBLE;
    }
}
