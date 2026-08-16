package com.android.tools.r8.shaking;

import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.MJ;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;

public final class Y1 extends AbstractC11112a2 {

    public final byte[] f57126b;

    public Y1(Origin origin, byte[] bArr) {
        super(origin);
        this.f57126b = bArr;
    }

    @Override
    public final KeepSpecProtos.KeepSpec a() {
        try {
            return KeepSpecProtos.KeepSpec.parseFrom(this.f57126b);
        } catch (MJ e10) {
            throw new ResourceException(this.f57168a, e10);
        }
    }
}
