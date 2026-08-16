package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;

public final class C12063f4 extends ContentObserver {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12063f4(C12081h4 c12081h4, Handler handler) {
        super(null);
        Objects.requireNonNull(c12081h4);
    }

    @Override
    public final void onChange(boolean z10) {
        AbstractC12215w4.c();
    }
}
