package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import n1.C14345a;

public final class RunnableC12442y4 implements Runnable {

    public final Bundle f63720b;

    public final C12260b5 f63721c;

    public RunnableC12442y4(C12260b5 c12260b5, Bundle bundle) {
        this.f63720b = bundle;
        Objects.requireNonNull(c12260b5);
        this.f63721c = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f63721c;
        c12260b5.h();
        c12260b5.j();
        Bundle bundle = this.f63720b;
        G0.A.r(bundle);
        String l10 = G0.A.l(bundle.getString("name"));
        if (!c12260b5.f62917a.g()) {
            c12260b5.f62917a.a().w().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            c12260b5.f62917a.J().d0(new C12310i(bundle.getString("app_id"), "", new i7(l10, 0L, null, ""), bundle.getLong(C14345a.C1879a.f97713m), bundle.getBoolean(C14345a.C1879a.f97714n), bundle.getString(C14345a.C1879a.f97704d), null, bundle.getLong(C14345a.C1879a.f97705e), null, bundle.getLong(C14345a.C1879a.f97710j), c12260b5.f62917a.C().R(bundle.getString("app_id"), bundle.getString(C14345a.C1879a.f97711k), bundle.getBundle(C14345a.C1879a.f97712l), "", bundle.getLong(C14345a.C1879a.f97713m), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
