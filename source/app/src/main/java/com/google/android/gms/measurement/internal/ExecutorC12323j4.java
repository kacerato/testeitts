package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Executor;

public final class ExecutorC12323j4 implements Executor {

    public final C12260b5 f63368b;

    public ExecutorC12323j4(C12260b5 c12260b5) {
        Objects.requireNonNull(c12260b5);
        this.f63368b = c12260b5;
    }

    @Override
    public final void execute(Runnable runnable) {
        this.f63368b.f62917a.b().t(runnable);
    }
}
