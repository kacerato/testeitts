package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class C12315i4 extends AbstractC12445z {

    public final C12260b5 f63353e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12315i4(C12260b5 c12260b5, U3 u32) {
        super(u32);
        Objects.requireNonNull(c12260b5);
        this.f63353e = c12260b5;
    }

    @Override
    @WorkerThread
    public final void a() {
        final C12260b5 B10 = this.f63353e.f62917a.B();
        Objects.requireNonNull(B10);
        new Thread(new Runnable() {
            @Override
            public final void run() {
                C12260b5.this.u0();
            }
        }).start();
    }
}
