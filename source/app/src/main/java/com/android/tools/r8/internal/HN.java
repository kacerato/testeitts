package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class HN extends IN {

    public static final boolean f40742d = true;

    public final String f40743c;

    public HN(String str) {
        if (!f40742d && str == null) {
            throw new AssertionError();
        }
        this.f40743c = str;
    }

    @Override
    public final String a() {
        return this.f40743c;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HN) {
            return this.f40743c.equals(((HN) obj).f40743c);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f40743c.hashCode();
    }

    @Override
    public final KeepSpecProtos.Context.Builder a(KeepSpecProtos.Context.Builder builder) {
        return builder.setClassDesc(KeepSpecProtos.TypeDesc.newBuilder().setDesc(this.f40743c).build());
    }
}
