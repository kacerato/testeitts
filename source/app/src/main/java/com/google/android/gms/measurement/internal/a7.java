package com.google.android.gms.measurement.internal;

import androidx.annotation.VisibleForTesting;

@VisibleForTesting
public final class a7 {

    public final c7 f63010a;

    public int f63011b = 1;

    public long f63012c = d();

    public a7(c7 c7Var) {
        this.f63010a = c7Var;
    }

    public final void a() {
        this.f63011b++;
        this.f63012c = d();
    }

    public final boolean b() {
        return this.f63010a.e().a() >= this.f63012c;
    }

    public final long c() {
        return this.f63012c;
    }

    public final long d() {
        c7 c7Var = this.f63010a;
        G0.A.r(c7Var);
        long longValue = ((Long) C12281e2.f63241v.b(null)).longValue();
        long longValue2 = ((Long) C12281e2.f63243w.b(null)).longValue();
        for (int i10 = 1; i10 < this.f63011b; i10++) {
            longValue += longValue;
            if (longValue >= longValue2) {
                break;
            }
        }
        return c7Var.e().a() + Math.min(longValue, longValue2);
    }
}
