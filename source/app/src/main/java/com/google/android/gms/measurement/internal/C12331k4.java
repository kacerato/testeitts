package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.util.SparseArray;
import java.util.Objects;

public final class C12331k4 implements com.google.common.util.concurrent.P {

    public final C6 f63373a;

    public final C12260b5 f63374b;

    public C12331k4(C12260b5 c12260b5, C6 c62) {
        this.f63373a = c62;
        Objects.requireNonNull(c12260b5);
        this.f63374b = c12260b5;
    }

    @Override
    public final void a(Throwable th2) {
        C12260b5 c12260b5 = this.f63374b;
        c12260b5.h();
        c12260b5.Z(false);
        C12370p3 c12370p3 = c12260b5.f62917a;
        int d02 = (c12370p3.w().H(null, C12281e2.f63177U0) ? c12260b5.d0(th2) : 2) - 1;
        if (d02 == 0) {
            c12370p3.a().r().c("registerTriggerAsync failed with retriable error. Will try later. App ID, throwable", B2.x(c12260b5.f62917a.L().q()), B2.x(th2.toString()));
            c12260b5.b0(1);
            c12260b5.w0().add(this.f63373a);
            return;
        }
        if (d02 != 1) {
            c12370p3.a().o().c("registerTriggerAsync failed. Dropping URI. App ID, Throwable", B2.x(c12260b5.f62917a.L().q()), th2);
            c();
            c12260b5.b0(1);
            c12260b5.x0();
            return;
        }
        c12260b5.w0().add(this.f63373a);
        if (c12260b5.a0() > ((Integer) C12281e2.f63246x0.b(null)).intValue()) {
            c12260b5.b0(1);
            c12370p3.a().r().c("registerTriggerAsync failed. May try later. App ID, throwable", B2.x(c12260b5.f62917a.L().q()), B2.x(th2.toString()));
        } else {
            c12370p3.a().r().d("registerTriggerAsync failed. App ID, delay in seconds, throwable", B2.x(c12260b5.f62917a.L().q()), B2.x(String.valueOf(c12260b5.a0())), B2.x(th2.toString()));
            c12260b5.V(c12260b5.a0());
            int a02 = c12260b5.a0();
            c12260b5.b0(a02 + a02);
        }
    }

    @Override
    public final void b(Object obj) {
        C12260b5 c12260b5 = this.f63374b;
        c12260b5.h();
        c();
        c12260b5.Z(false);
        c12260b5.b0(1);
        c12260b5.f62917a.a().v().b("Successfully registered trigger URI", this.f63373a.f62583b);
        c12260b5.x0();
    }

    public final void c() {
        C12370p3 c12370p3 = this.f63374b.f62917a;
        SparseArray r10 = c12370p3.x().r();
        C6 c62 = this.f63373a;
        r10.put(c62.f62585d, Long.valueOf(c62.f62584c));
        P2 x10 = c12370p3.x();
        int[] iArr = new int[r10.size()];
        long[] jArr = new long[r10.size()];
        for (int i10 = 0; i10 < r10.size(); i10++) {
            iArr[i10] = r10.keyAt(i10);
            jArr[i10] = ((Long) r10.valueAt(i10)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        x10.f62860o.b(bundle);
    }
}
