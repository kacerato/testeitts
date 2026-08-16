package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "TriggerUriParcelCreator")
public final class C6 extends I0.a {
    public static final Parcelable.Creator<C6> CREATOR = new D6();

    @c.InterfaceC0186c(id = 1)
    public final String f62583b;

    @c.InterfaceC0186c(id = 2)
    public final long f62584c;

    @c.InterfaceC0186c(id = 3)
    public final int f62585d;

    @c.b
    public C6(@c.e(id = 1) String str, @c.e(id = 2) long j10, @c.e(id = 3) int i10) {
        this.f62583b = str;
        this.f62584c = j10;
        this.f62585d = i10;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.f62583b;
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 1, str, false);
        I0.b.K(parcel, 2, this.f62584c);
        I0.b.F(parcel, 3, this.f62585d);
        I0.b.b(parcel, a10);
    }
}
