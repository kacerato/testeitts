package com.google.android.gms.measurement.internal;

import androidx.annotation.BinderThread;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class BinderC12435x5 extends AbstractBinderC12329k2 {

    public final AtomicReference f63700e;

    public BinderC12435x5(C12293f6 c12293f6, AtomicReference atomicReference) {
        this.f63700e = atomicReference;
        Objects.requireNonNull(c12293f6);
    }

    @Override
    @BinderThread
    public final void Q0(List list) {
        AtomicReference atomicReference = this.f63700e;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }
}
