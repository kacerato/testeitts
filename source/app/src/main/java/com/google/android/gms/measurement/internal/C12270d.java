package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.C12030b7;
import java.util.Objects;

public final class C12270d extends AbstractC12262c {

    public final com.google.android.gms.internal.measurement.U1 f63113g;

    public final C12278e f63114h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12270d(C12278e c12278e, String str, int i10, com.google.android.gms.internal.measurement.U1 u12) {
        super(str, i10);
        Objects.requireNonNull(c12278e);
        this.f63114h = c12278e;
        this.f63113g = u12;
    }

    @Override
    public final int a() {
        return this.f63113g.F();
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final boolean c() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean k(Long l10, Long l11, com.google.android.gms.internal.measurement.E3 e32, boolean z10) {
        C12030b7.a();
        C12370p3 c12370p3 = this.f63114h.f62917a;
        boolean H10 = c12370p3.w().H(this.f63050a, C12281e2.f63145E0);
        com.google.android.gms.internal.measurement.U1 u12 = this.f63113g;
        boolean I10 = u12.I();
        boolean J10 = u12.J();
        boolean L10 = u12.L();
        Object[] objArr = I10 || J10 || L10;
        Boolean bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z10 && objArr != true) {
            c12370p3.a().w().c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f63051b), u12.E() ? Integer.valueOf(u12.F()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.O1 H11 = u12.H();
        boolean J11 = H11.J();
        if (e32.J()) {
            if (H11.G()) {
                bool = AbstractC12262c.e(AbstractC12262c.g(e32.K(), H11.H()), J11);
            } else {
                c12370p3.a().r().b("No number filter for long property. property", c12370p3.D().c(e32.G()));
            }
        } else if (e32.N()) {
            if (H11.G()) {
                bool = AbstractC12262c.e(AbstractC12262c.h(e32.O(), H11.H()), J11);
            } else {
                c12370p3.a().r().b("No number filter for double property. property", c12370p3.D().c(e32.G()));
            }
        } else if (!e32.H()) {
            c12370p3.a().r().b("User property has no value, property", c12370p3.D().c(e32.G()));
        } else if (H11.E()) {
            bool = AbstractC12262c.e(AbstractC12262c.f(e32.I(), H11.F(), c12370p3.a()), J11);
        } else if (!H11.G()) {
            c12370p3.a().r().b("No string or number filter defined. property", c12370p3.D().c(e32.G()));
        } else if (h7.O(e32.I())) {
            bool = AbstractC12262c.e(AbstractC12262c.i(e32.I(), H11.H()), J11);
        } else {
            c12370p3.a().r().c("Invalid user property value for Numeric number filter. property, value", c12370p3.D().c(e32.G()), e32.I());
        }
        c12370p3.a().w().b("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.f63052c = Boolean.TRUE;
        if (L10 && !bool.booleanValue()) {
            return true;
        }
        if (!z10 || u12.I()) {
            this.f63053d = bool;
        }
        if (bool.booleanValue() && objArr != false && e32.E()) {
            long F10 = e32.F();
            if (l10 != null) {
                F10 = l10.longValue();
            }
            if (H10 && u12.I() && !u12.J() && l11 != null) {
                F10 = l11.longValue();
            }
            if (u12.J()) {
                this.f63055f = Long.valueOf(F10);
            } else {
                this.f63054e = Long.valueOf(F10);
            }
        }
        return true;
    }
}
