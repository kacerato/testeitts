package com.google.android.gms.internal.auth;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C11927e0 extends ContentObserver {
    public C11927e0(Handler handler) {
        super(null);
    }

    @Override
    public final void onChange(boolean z10) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C11931f0.f61725e;
        atomicBoolean.set(true);
    }
}
