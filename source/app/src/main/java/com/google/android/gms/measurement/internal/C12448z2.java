package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class C12448z2 {

    public final int f63731a;

    public final boolean f63732b;

    public final boolean f63733c;

    public final B2 f63734d;

    public C12448z2(B2 b22, int i10, boolean z10, boolean z11) {
        Objects.requireNonNull(b22);
        this.f63734d = b22;
        this.f63731a = i10;
        this.f63732b = z10;
        this.f63733c = z11;
    }

    public final void a(String str) {
        this.f63734d.y(this.f63731a, this.f63732b, this.f63733c, str, null, null, null);
    }

    public final void b(String str, Object obj) {
        this.f63734d.y(this.f63731a, this.f63732b, this.f63733c, str, obj, null, null);
    }

    public final void c(String str, Object obj, Object obj2) {
        this.f63734d.y(this.f63731a, this.f63732b, this.f63733c, str, obj, obj2, null);
    }

    public final void d(String str, Object obj, Object obj2, Object obj3) {
        this.f63734d.y(this.f63731a, this.f63732b, this.f63733c, str, obj, obj2, obj3);
    }
}
