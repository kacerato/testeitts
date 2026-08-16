package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public class IN {

    public static final IN f41068a = new IN();

    public static final boolean f41069b = true;

    public String a() {
        throw new FN("Invalid attempt to get descriptor string from none context");
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public KeepSpecProtos.Context.Builder a(KeepSpecProtos.Context.Builder builder) {
        if (f41069b || this == f41068a) {
            return builder;
        }
        throw new AssertionError();
    }
}
