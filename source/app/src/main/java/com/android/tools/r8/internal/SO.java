package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class SO extends UO {

    public static final SO f44199a = new SO();

    @Override
    public final KeepSpecProtos.MethodParameterTypesPattern.Builder b() {
        throw new FN("Attempt to build message of any type encoded as absent.");
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "(...)";
    }
}
