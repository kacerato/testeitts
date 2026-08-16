package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.util.Map;

@WorkerThread
public final class E2 implements Runnable {

    public final D2 f62615b;

    public final int f62616c;

    public final Throwable f62617d;

    public final byte[] f62618e;

    public final String f62619f;

    public final Map f62620g;

    public E2(String str, D2 d22, int i10, Throwable th2, byte[] bArr, Map map, byte[] bArr2) {
        G0.A.r(d22);
        this.f62615b = d22;
        this.f62616c = i10;
        this.f62617d = th2;
        this.f62618e = bArr;
        this.f62619f = str;
        this.f62620g = map;
    }

    @Override
    public final void run() {
        this.f62615b.a(this.f62619f, this.f62616c, this.f62617d, this.f62618e, this.f62620g);
    }
}
