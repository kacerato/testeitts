package B0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import javax.annotation.Nullable;

@c.a(creator = "GoogleCertificatesLookupResponseCreator")
public final class T extends I0.a {
    public static final Parcelable.Creator<T> CREATOR = new U();

    @c.InterfaceC0186c(getter = "getResult", id = 1)
    public final boolean f1156b;

    @c.InterfaceC0186c(getter = "getErrorMessage", id = 2)
    @Nullable
    public final String f1157c;

    @c.InterfaceC0186c(getter = "getStatusValue", id = 3)
    public final int f1158d;

    @c.InterfaceC0186c(getter = "getFirstPartyStatusValue", id = 4)
    public final int f1159e;

    @c.b
    public T(@c.e(id = 1) boolean z10, @c.e(id = 2) String str, @c.e(id = 3) int i10, @c.e(id = 4) int i11) {
        this.f1156b = z10;
        this.f1157c = str;
        this.f1158d = a0.a(i10) - 1;
        this.f1159e = F.a(i11) - 1;
    }

    public final int b0() {
        return F.a(this.f1159e);
    }

    @Nullable
    public final String n() {
        return this.f1157c;
    }

    public final int n0() {
        return a0.a(this.f1158d);
    }

    public final boolean t() {
        return this.f1156b;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.g(parcel, 1, this.f1156b);
        I0.b.Y(parcel, 2, this.f1157c, false);
        I0.b.F(parcel, 3, this.f1158d);
        I0.b.F(parcel, 4, this.f1159e);
        I0.b.b(parcel, a10);
    }
}
