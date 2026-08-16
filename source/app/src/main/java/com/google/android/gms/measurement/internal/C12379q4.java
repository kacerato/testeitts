package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class C12379q4 extends AbstractC12445z {

    public final C12260b5 f63531e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12379q4(C12260b5 c12260b5, U3 u32) {
        super(u32);
        Objects.requireNonNull(c12260b5);
        this.f63531e = c12260b5;
    }

    @Override
    @WorkerThread
    public final void a() {
        this.f63531e.r();
    }
}
