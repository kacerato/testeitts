package com.google.android.gms.internal.auth;

import android.database.ContentObserver;
import android.os.Handler;

public final class C11947j0 extends ContentObserver {

    public final C11951k0 f61778a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11947j0(C11951k0 c11951k0, Handler handler) {
        super(null);
        this.f61778a = c11951k0;
    }

    @Override
    public final void onChange(boolean z10) {
        this.f61778a.e();
    }
}
