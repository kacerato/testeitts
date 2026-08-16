package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class TO extends UO {

    public static final TO f44459b = new TO(Collections.EMPTY_LIST);

    public static final boolean f44460c = true;

    public final List f44461a;

    public TO(List list) {
        if (!f44460c && list == null) {
            throw new AssertionError();
        }
        this.f44461a = list;
    }

    @Override
    public final List a() {
        return this.f44461a;
    }

    @Override
    public final KeepSpecProtos.MethodParameterTypesPattern.Builder b() {
        KeepSpecProtos.MethodParameterTypesPattern.Builder newBuilder = KeepSpecProtos.MethodParameterTypesPattern.newBuilder();
        Iterator it = this.f44461a.iterator();
        while (it.hasNext()) {
            newBuilder.addTypes(((DP) it.next()).a());
        }
        return newBuilder;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TO) {
            return this.f44461a.equals(((TO) obj).f44461a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f44461a.hashCode();
    }

    public final String toString() {
        return "(" + ((String) this.f44461a.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DP) obj).toString();
            }
        }).collect(Collectors.joining(", "))) + ")";
    }
}
