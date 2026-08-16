package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;

public final class U3 extends ContentObserver {

    public final V3 f62128a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U3(V3 v32, Handler handler) {
        super(null);
        Objects.requireNonNull(v32);
        this.f62128a = v32;
    }

    @Override
    public final void onChange(boolean z10) {
        this.f62128a.b().set(true);
    }
}
