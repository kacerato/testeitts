package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import javax.annotation.Nonnull;
import x0.InterfaceC16040b;

public final class Y implements InterfaceC16040b.InterfaceC2196b {

    public final Status f61682b;

    public final String f61683c;

    public Y(@Nonnull Status status) {
        this.f61682b = (Status) G0.A.r(status);
        this.f61683c = "";
    }

    @Override
    public final String g() {
        return this.f61683c;
    }

    @Override
    public final Status getStatus() {
        return this.f61682b;
    }

    public Y(@Nonnull String str) {
        this.f61683c = (String) G0.A.r(str);
        this.f61682b = Status.f61039g;
    }
}
