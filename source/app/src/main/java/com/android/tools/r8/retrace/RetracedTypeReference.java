package com.android.tools.r8.retrace;

import com.android.tools.r8.references.TypeReference;

public interface RetracedTypeReference {
    String getTypeName();

    TypeReference getTypeReference();

    boolean isVoid();

    TypeReference toArray(int i10);
}
