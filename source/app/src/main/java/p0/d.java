package P0;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "StringToIntConverterEntryCreator")
public final class d extends I0.a {
    public static final Parcelable.Creator<d> CREATOR = new f();

    @c.h(id = 1)
    public final int f20624b;

    @c.InterfaceC0186c(id = 2)
    public final String f20625c;

    @c.InterfaceC0186c(id = 3)
    public final int f20626d;

    @c.b
    public d(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) int i11) {
        this.f20624b = i10;
        this.f20625c = str;
        this.f20626d = i11;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f20624b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, this.f20625c, false);
        I0.b.F(parcel, 3, this.f20626d);
        I0.b.b(parcel, a10);
    }

    public d(String str, int i10) {
        this.f20624b = 1;
        this.f20625c = str;
        this.f20626d = i10;
    }
}
