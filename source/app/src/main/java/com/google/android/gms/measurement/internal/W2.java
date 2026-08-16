package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.M7;
import java.util.List;
import java.util.Objects;

public final class W2 implements M7 {

    public final C12266c3 f62955a;

    public W2(C12266c3 c12266c3) {
        Objects.requireNonNull(c12266c3);
        this.f62955a = c12266c3;
    }

    @Override
    public final void a(int i10, String str, List list, boolean z10, boolean z11) {
        int i11 = i10 - 1;
        C12448z2 u10 = i11 != 0 ? i11 != 1 ? i11 != 3 ? i11 != 4 ? this.f62955a.f62917a.a().u() : z10 ? this.f62955a.f62917a.a().s() : !z11 ? this.f62955a.f62917a.a().t() : this.f62955a.f62917a.a().r() : this.f62955a.f62917a.a().w() : z10 ? this.f62955a.f62917a.a().p() : !z11 ? this.f62955a.f62917a.a().q() : this.f62955a.f62917a.a().o() : this.f62955a.f62917a.a().v();
        int size = list.size();
        if (size == 1) {
            u10.b(str, list.get(0));
            return;
        }
        if (size == 2) {
            u10.c(str, list.get(0), list.get(1));
        } else if (size != 3) {
            u10.a(str);
        } else {
            u10.d(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
