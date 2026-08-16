package com.google.android.gms.measurement.internal;

import android.util.Log;
import java.util.Objects;

public final class C12291f4 implements InterfaceC12400t2 {

    public final C12370p3 f63274a;

    public C12291f4(C12299g4 c12299g4, C12370p3 c12370p3) {
        this.f63274a = c12370p3;
        Objects.requireNonNull(c12299g4);
    }

    @Override
    public final boolean N1() {
        return Log.isLoggable(this.f63274a.a().z(), 3);
    }
}
