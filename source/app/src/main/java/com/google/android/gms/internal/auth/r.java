package com.google.android.gms.internal.auth;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "DeviceMetaDataRequestCreator")
public final class r extends I0.a {
    public static final Parcelable.Creator<r> CREATOR = new C11981s();

    @c.h(id = 1)
    public final int f61824b;

    @c.InterfaceC0186c(id = 2)
    public final String f61825c;

    @c.b
    public r(@c.e(id = 1) int i10, @c.e(id = 2) String str) {
        this.f61824b = 1;
        this.f61825c = (String) G0.A.r(str);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61824b);
        I0.b.Y(parcel, 2, this.f61825c, false);
        I0.b.b(parcel, a10);
    }

    public r(String str) {
        this(1, str);
    }
}
