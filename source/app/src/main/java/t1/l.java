package t1;

import B0.C2318c;
import G0.C2579m0;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@c.a(creator = "SignInResponseCreator")
public final class l extends I0.a {
    public static final Parcelable.Creator<l> CREATOR = new m();

    @c.h(id = 1)
    public final int f109710b;

    @c.InterfaceC0186c(getter = "getConnectionResult", id = 2)
    public final C2318c f109711c;

    @Nullable
    @c.InterfaceC0186c(getter = "getResolveAccountResponse", id = 3)
    public final C2579m0 f109712d;

    @c.b
    public l(@c.e(id = 1) int i10, @c.e(id = 2) C2318c c2318c, @Nullable @c.e(id = 3) C2579m0 c2579m0) {
        this.f109710b = i10;
        this.f109711c = c2318c;
        this.f109712d = c2579m0;
    }

    public final C2318c n() {
        return this.f109711c;
    }

    @Nullable
    public final C2579m0 t() {
        return this.f109712d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f109710b);
        I0.b.S(parcel, 2, this.f109711c, i10, false);
        I0.b.S(parcel, 3, this.f109712d, i10, false);
        I0.b.b(parcel, a10);
    }
}
