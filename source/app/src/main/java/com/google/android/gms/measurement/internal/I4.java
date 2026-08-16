package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import java.util.Objects;

public final class I4 implements Runnable {

    public final A f62733b;

    public final C12260b5 f62734c;

    public I4(C12260b5 c12260b5, A a10) {
        this.f62733b = a10;
        Objects.requireNonNull(c12260b5);
        this.f62734c = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f62734c;
        C12370p3 c12370p3 = c12260b5.f62917a;
        P2 x10 = c12370p3.x();
        C12370p3 c12370p32 = x10.f62917a;
        x10.h();
        A u10 = x10.u();
        A a10 = this.f62733b;
        if (!Z3.u(a10.b(), u10.b())) {
            c12370p3.a().u().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(a10.b()));
            return;
        }
        SharedPreferences.Editor edit = x10.p().edit();
        edit.putString("dma_consent_settings", a10.e());
        edit.apply();
        c12370p3.a().w().b("Setting DMA consent(FE)", a10);
        C12370p3 c12370p33 = c12260b5.f62917a;
        if (c12370p33.J().D()) {
            c12370p33.J().a0();
        } else {
            c12370p33.J().Y(false);
        }
    }
}
