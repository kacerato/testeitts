package com.android.tools.r8.retrace;

import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.TypeReference;

public interface RetracedFieldReference extends RetracedClassMemberReference {

    public interface KnownRetracedFieldReference extends RetracedFieldReference {
        FieldReference getFieldReference();

        TypeReference getFieldType();

        @Override
        boolean isKnown();

        @Override
        boolean isUnknown();
    }

    KnownRetracedFieldReference asKnown();

    String getFieldName();

    boolean isKnown();

    boolean isUnknown();
}
