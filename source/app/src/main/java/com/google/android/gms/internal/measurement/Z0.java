package com.google.android.gms.internal.measurement;

import androidx.annotation.BinderThread;
import java.util.Objects;

public final class Z0 extends B0 {

    public final Runnable f62187e;

    public Z0(C12015a1 c12015a1, Runnable runnable) {
        this.f62187e = runnable;
        Objects.requireNonNull(c12015a1);
    }

    @Override
    @BinderThread
    public final void R1() {
        this.f62187e.run();
    }
}
