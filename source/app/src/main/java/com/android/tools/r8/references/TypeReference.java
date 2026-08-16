package com.android.tools.r8.references;

import com.android.tools.r8.internal.C4932Bl;

public interface TypeReference {
    default ArrayReference asArray() {
        return null;
    }

    default ClassReference asClass() {
        return null;
    }

    default PrimitiveReference asPrimitive() {
        return null;
    }

    String getDescriptor();

    default String getTypeName() {
        return C4932Bl.b(getDescriptor());
    }

    default boolean isArray() {
        return false;
    }

    default boolean isClass() {
        return false;
    }

    default boolean isPrimitive() {
        return false;
    }
}
