package G0;

import B0.C2320e;
import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@c.a(creator = "ConnectionInfoCreator")
public final class N0 extends I0.a {
    public static final Parcelable.Creator<N0> CREATOR = new O0();

    @c.InterfaceC0186c(id = 1)
    public Bundle f7305b;

    @c.InterfaceC0186c(id = 2)
    public C2320e[] f7306c;

    @c.InterfaceC0186c(defaultValue = "0", id = 3)
    public int f7307d;

    @Nullable
    @c.InterfaceC0186c(id = 4)
    public C2572j f7308e;

    public N0() {
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.k(parcel, 1, this.f7305b, false);
        I0.b.c0(parcel, 2, this.f7306c, i10, false);
        I0.b.F(parcel, 3, this.f7307d);
        I0.b.S(parcel, 4, this.f7308e, i10, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public N0(@c.e(id = 1) Bundle bundle, @c.e(id = 2) C2320e[] c2320eArr, @c.e(id = 3) int i10, @Nullable @c.e(id = 4) C2572j c2572j) {
        this.f7305b = bundle;
        this.f7306c = c2320eArr;
        this.f7307d = i10;
        this.f7308e = c2572j;
    }
}
