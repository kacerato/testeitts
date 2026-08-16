package com.google.android.gms.internal.auth;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import s0.C15223c;
import v1.C15791l;

public final class y3 extends k3 {

    public final C15791l f61879e;

    public y3(C11918c c11918c, C15791l c15791l) {
        this.f61879e = c15791l;
    }

    @Override
    public final void D(Status status, @Nullable C15223c c15223c) {
        C11918c.g0(status, c15223c, this.f61879e);
    }
}
