package G0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "ValidateAccountRequestCreator")
@Deprecated
public final class C0 extends I0.a {
    public static final Parcelable.Creator<C0> CREATOR = new D0();

    @c.h(id = 1)
    public final int f7274b;

    @c.b
    public C0(@c.e(id = 1) int i10) {
        this.f7274b = i10;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7274b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.b(parcel, a10);
    }
}
