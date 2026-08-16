package com.google.android.gms.internal.auth;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@G0.F
@c.a(creator = "ClearTokenRequestCreator")
public final class Z extends I0.a {
    public static final Parcelable.Creator<Z> CREATOR = new C11911a0();

    @c.h(id = 1)
    public final int f61688b;

    @c.InterfaceC0186c(id = 2)
    public String f61689c;

    public Z() {
        this.f61688b = 1;
    }

    public final Z b(String str) {
        this.f61689c = str;
        return this;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61688b);
        I0.b.Y(parcel, 2, this.f61689c, false);
        I0.b.b(parcel, a10);
    }

    @c.b
    public Z(@c.e(id = 1) int i10, @c.e(id = 2) String str) {
        this.f61688b = i10;
        this.f61689c = str;
    }
}
