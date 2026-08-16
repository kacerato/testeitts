package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;

public final class BinderC12184t0 extends AbstractBinderC12229y0 {

    public final AtomicReference f62430e = new AtomicReference();

    public boolean f62431f;

    public static final Object e1(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c)) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    public final String k(long j10) {
        return (String) e1(l0(j10), String.class);
    }

    @Override
    public final void l(Bundle bundle) {
        AtomicReference atomicReference = this.f62430e;
        synchronized (atomicReference) {
            try {
                try {
                    atomicReference.set(bundle);
                    this.f62431f = true;
                } finally {
                    this.f62430e.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Bundle l0(long j10) {
        Bundle bundle;
        AtomicReference atomicReference = this.f62430e;
        synchronized (atomicReference) {
            if (!this.f62431f) {
                try {
                    atomicReference.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f62430e.get();
        }
        return bundle;
    }

    public final Long t(long j10) {
        return (Long) e1(l0(j10), Long.class);
    }
}
