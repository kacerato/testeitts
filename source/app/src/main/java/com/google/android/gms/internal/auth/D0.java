package com.google.android.gms.internal.auth;

import android.net.Uri;
import javax.annotation.Nullable;

public final class D0 {

    public final Uri f61596a;

    public final String f61597b;

    public final String f61598c;

    public final boolean f61599d;

    public final boolean f61600e;

    public D0(String str, Uri uri, String str2, String str3, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable L0 l02) {
        this.f61596a = uri;
        this.f61597b = "";
        this.f61598c = "";
        this.f61599d = z10;
        this.f61600e = z12;
    }

    public final D0 a() {
        return new D0(null, this.f61596a, this.f61597b, this.f61598c, this.f61599d, false, true, false, null);
    }

    public final D0 b() {
        if (this.f61597b.isEmpty()) {
            return new D0(null, this.f61596a, this.f61597b, this.f61598c, true, false, this.f61600e, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    public final H0 c(String str, double d10) {
        return new B0(this, str, Double.valueOf(0.0d), true);
    }

    public final H0 d(String str, long j10) {
        return new C12010z0(this, str, Long.valueOf(j10), true);
    }

    public final H0 e(String str, boolean z10) {
        return new A0(this, str, Boolean.valueOf(z10), true);
    }

    public final H0 f(String str, Object obj, f3 f3Var) {
        return new C0(this, "getTokenRefactor__blocked_packages", obj, true, f3Var);
    }

    public D0(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }
}
