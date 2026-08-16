package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import x0.C16043e;
import x0.InterfaceC16040b;

public final class X implements InterfaceC16040b.a {

    public final Status f61676b;

    public C16043e f61677c;

    public X(Status status) {
        this.f61676b = status;
    }

    @Override
    public final Status getStatus() {
        return this.f61676b;
    }

    @Override
    public final C16043e l() {
        return this.f61677c;
    }

    public X(C16043e c16043e) {
        this.f61677c = c16043e;
        this.f61676b = Status.f61039g;
    }
}
