package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;

public final class Y3 extends ContentObserver {

    public final C12018a4 f62178a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y3(C12018a4 c12018a4, Handler handler) {
        super(null);
        Objects.requireNonNull(c12018a4);
        this.f62178a = c12018a4;
    }

    @Override
    public final void onChange(boolean z10) {
        this.f62178a.e();
    }
}
