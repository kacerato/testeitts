package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import n1.C14345a;

public final class RunnableC12434x4 implements Runnable {

    public final Bundle f63698b;

    public final C12260b5 f63699c;

    public RunnableC12434x4(C12260b5 c12260b5, Bundle bundle) {
        this.f63698b = bundle;
        Objects.requireNonNull(c12260b5);
        this.f63699c = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f63699c;
        c12260b5.h();
        c12260b5.j();
        Bundle bundle = this.f63698b;
        G0.A.r(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        G0.A.l(string);
        G0.A.l(string2);
        G0.A.r(bundle.get("value"));
        if (!c12260b5.f62917a.g()) {
            c12260b5.f62917a.a().w().a("Conditional property not set since app measurement is disabled");
            return;
        }
        i7 i7Var = new i7(string, bundle.getLong(C14345a.C1879a.f97715o), bundle.get("value"), string2);
        try {
            C12370p3 c12370p3 = c12260b5.f62917a;
            I R10 = c12370p3.C().R(bundle.getString("app_id"), bundle.getString(C14345a.C1879a.f97708h), bundle.getBundle(C14345a.C1879a.f97709i), string2, 0L, true, true);
            c12260b5.f62917a.J().d0(new C12310i(bundle.getString("app_id"), string2, i7Var, bundle.getLong(C14345a.C1879a.f97713m), false, bundle.getString(C14345a.C1879a.f97704d), c12370p3.C().R(bundle.getString("app_id"), bundle.getString(C14345a.C1879a.f97706f), bundle.getBundle(C14345a.C1879a.f97707g), string2, 0L, true, true), bundle.getLong(C14345a.C1879a.f97705e), R10, bundle.getLong(C14345a.C1879a.f97710j), c12370p3.C().R(bundle.getString("app_id"), bundle.getString(C14345a.C1879a.f97711k), bundle.getBundle(C14345a.C1879a.f97712l), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
