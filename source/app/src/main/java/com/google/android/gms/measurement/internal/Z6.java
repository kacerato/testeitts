package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class Z6 {

    public final String f62995a;

    public long f62996b;

    public Z6(c7 c7Var, String str, byte[] bArr) {
        this(c7Var, str);
    }

    public Z6(c7 c7Var, String str) {
        Objects.requireNonNull(c7Var);
        this.f62995a = str;
        this.f62996b = c7Var.e().c();
    }

    public Z6(c7 c7Var, byte[] bArr) {
        this(c7Var, c7Var.N0().l0());
    }
}
