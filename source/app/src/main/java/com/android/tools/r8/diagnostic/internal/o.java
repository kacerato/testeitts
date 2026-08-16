package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.MissingFieldInfo;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.references.FieldReference;

public final class o extends j implements MissingFieldInfo {

    public final FieldReference f36012b;

    public o(FieldReference fieldReference, AbstractC7552hC abstractC7552hC) {
        super(abstractC7552hC);
        this.f36012b = fieldReference;
    }

    @Override
    public final FieldReference getFieldReference() {
        return this.f36012b;
    }
}
