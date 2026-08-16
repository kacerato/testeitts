package com.google.android.gms.measurement.internal;

import androidx.annotation.VisibleForTesting;

public final class S2 {

    public final C12370p3 f62916a;

    public S2(c7 c7Var) {
        this.f62916a = c7Var.f0();
    }

    @VisibleForTesting
    public final boolean a() {
        try {
            C12370p3 c12370p3 = this.f62916a;
            V0.c a10 = V0.d.a(c12370p3.d());
            if (a10 != null) {
                return a10.f("com.android.vending", 128).versionCode >= 80837300;
            }
            c12370p3.a().w().a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e10) {
            this.f62916a.a().w().b("Failed to retrieve Play Store version for Install Referrer", e10);
            return false;
        }
    }
}
