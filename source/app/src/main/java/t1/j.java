package t1;

import G0.C2575k0;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "SignInRequestCreator")
public final class j extends I0.a {
    public static final Parcelable.Creator<j> CREATOR = new k();

    @c.h(id = 1)
    public final int f109708b;

    @c.InterfaceC0186c(getter = "getResolveAccountRequest", id = 2)
    public final C2575k0 f109709c;

    @c.b
    public j(@c.e(id = 1) int i10, @c.e(id = 2) C2575k0 c2575k0) {
        this.f109708b = i10;
        this.f109709c = c2575k0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f109708b);
        I0.b.S(parcel, 2, this.f109709c, i10, false);
        I0.b.b(parcel, a10);
    }
}
