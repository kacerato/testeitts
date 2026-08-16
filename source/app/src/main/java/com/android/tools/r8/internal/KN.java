package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;

public final class KN extends IN {

    public final String f41656c;

    public final String f41657d;

    public final String f41658e;

    public KN(String str, String str2, String str3) {
        this.f41656c = str;
        this.f41657d = str2;
        this.f41658e = str3;
    }

    @Override
    public final String a() {
        return this.f41656c + this.f41657d + b3.s.f32937c + this.f41658e;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KN)) {
            return false;
        }
        KN kn2 = (KN) obj;
        return this.f41656c.equals(kn2.f41656c) && this.f41657d.equals(kn2.f41657d) && this.f41658e.equals(kn2.f41658e);
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f41656c, this.f41657d, this.f41658e);
    }

    @Override
    public final KeepSpecProtos.Context.Builder a(KeepSpecProtos.Context.Builder builder) {
        return builder.setFieldDesc(KeepSpecProtos.FieldDesc.newBuilder().setHolder(KeepSpecProtos.TypeDesc.newBuilder().setDesc(this.f41656c).build()).setName(this.f41657d).setFieldType(KeepSpecProtos.TypeDesc.newBuilder().setDesc(this.f41658e).build()).build());
    }
}
