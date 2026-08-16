package com.android.tools.r8.references;

import org.eclipse.jdt.core.Signature;

public final class e extends PrimitiveReference {
    public e() {
        super();
    }

    @Override
    public final String getDescriptor() {
        return Signature.SIG_INT;
    }
}
