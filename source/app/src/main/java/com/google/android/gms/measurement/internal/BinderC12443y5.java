package com.google.android.gms.measurement.internal;

import androidx.annotation.BinderThread;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class BinderC12443y5 extends AbstractBinderC12353n2 {

    public final AtomicReference f63722e;

    public final C12293f6 f63723f;

    public BinderC12443y5(C12293f6 c12293f6, AtomicReference atomicReference) {
        this.f63722e = atomicReference;
        Objects.requireNonNull(c12293f6);
        this.f63723f = c12293f6;
    }

    @Override
    @BinderThread
    public final void c1(L6 l62) {
        AtomicReference atomicReference = this.f63722e;
        synchronized (atomicReference) {
            this.f63723f.f62917a.a().w().b("[sgtm] Got upload batches from service. count", Integer.valueOf(l62.f62783b.size()));
            atomicReference.set(l62);
            atomicReference.notifyAll();
        }
    }
}
