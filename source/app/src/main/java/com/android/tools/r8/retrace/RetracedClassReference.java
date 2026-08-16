package com.android.tools.r8.retrace;

import com.android.tools.r8.references.ClassReference;

public interface RetracedClassReference {
    String getBinaryName();

    ClassReference getClassReference();

    String getDescriptor();

    RetracedTypeReference getRetracedType();

    String getTypeName();

    boolean isKnown();

    boolean isUnknown();
}
