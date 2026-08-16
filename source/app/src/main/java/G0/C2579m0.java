package G0;

import B0.C2318c;
import G0.r;
import I0.c;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@c.a(creator = "ResolveAccountResponseCreator")
public final class C2579m0 extends I0.a {
    public static final Parcelable.Creator<C2579m0> CREATOR = new C2581n0();

    @c.h(id = 1)
    public final int f7457b;

    @Nullable
    @c.InterfaceC0186c(id = 2)
    public final IBinder f7458c;

    @c.InterfaceC0186c(getter = "getConnectionResult", id = 3)
    public final C2318c f7459d;

    @c.InterfaceC0186c(getter = "getSaveDefaultAccount", id = 4)
    public final boolean f7460e;

    @c.InterfaceC0186c(getter = "isFromCrossClientAuth", id = 5)
    public final boolean f7461f;

    @c.b
    public C2579m0(@c.e(id = 1) int i10, @Nullable @c.e(id = 2) IBinder iBinder, @c.e(id = 3) C2318c c2318c, @c.e(id = 4) boolean z10, @c.e(id = 5) boolean z11) {
        this.f7457b = i10;
        this.f7458c = iBinder;
        this.f7459d = c2318c;
        this.f7460e = z10;
        this.f7461f = z11;
    }

    public final boolean b0() {
        return this.f7460e;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2579m0)) {
            return false;
        }
        C2579m0 c2579m0 = (C2579m0) obj;
        return this.f7459d.equals(c2579m0.f7459d) && C2601y.b(t(), c2579m0.t());
    }

    public final C2318c n() {
        return this.f7459d;
    }

    public final boolean n0() {
        return this.f7461f;
    }

    @Nullable
    public final r t() {
        IBinder iBinder = this.f7458c;
        if (iBinder == null) {
            return null;
        }
        return r.a.k(iBinder);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f7457b);
        I0.b.B(parcel, 2, this.f7458c, false);
        I0.b.S(parcel, 3, this.f7459d, i10, false);
        I0.b.g(parcel, 4, this.f7460e);
        I0.b.g(parcel, 5, this.f7461f);
        I0.b.b(parcel, a10);
    }
}
