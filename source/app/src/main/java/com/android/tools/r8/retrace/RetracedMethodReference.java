package com.android.tools.r8.retrace;

import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.TypeReference;
import java.util.List;

public interface RetracedMethodReference extends RetracedClassMemberReference, Comparable<RetracedMethodReference> {

    public interface KnownRetracedMethodReference extends RetracedMethodReference {
        List<TypeReference> getFormalTypes();

        MethodReference getMethodReference();

        TypeReference getReturnType();

        boolean isVoid();
    }

    KnownRetracedMethodReference asKnown();

    String getMethodName();

    int getOriginalPositionOrDefault(int i10);

    boolean hasPosition();

    boolean isKnown();

    boolean isUnknown();
}
