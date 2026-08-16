package com.google.android.gms.internal.auth;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "RetrieveDataRequestCreator")
public final class C12005y extends I0.a {
    public static final Parcelable.Creator<C12005y> CREATOR = new C12009z();

    @c.h(id = 1)
    public final int f61871b;

    @c.InterfaceC0186c(id = 2)
    public final String f61872c;

    @c.b
    public C12005y(@c.e(id = 1) int i10, @c.e(id = 2) String str) {
        this.f61871b = 1;
        this.f61872c = (String) G0.A.r(str);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61871b);
        I0.b.Y(parcel, 2, this.f61872c, false);
        I0.b.b(parcel, a10);
    }

    public C12005y(String str) {
        this(1, str);
    }
}
