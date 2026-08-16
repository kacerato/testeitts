package com.google.android.gms.common.internal;

import B0.C2318c;
import G0.A;

public final class zzaj extends Exception {
    public final C2318c zza;

    public zzaj(C2318c c2318c) {
        A.b(c2318c.n0(), "ResolvableConnectionException can only be created with a connection result containing a resolution.");
        this.zza = c2318c;
    }
}
