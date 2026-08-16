package com.google.android.gms.internal.auth;

import I0.c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "UserChallengeRequestCreator")
public final class D extends I0.a {
    public static final Parcelable.Creator<D> CREATOR = new E();

    @c.h(id = 1)
    public final int f61593b;

    @c.InterfaceC0186c(id = 2)
    public final String f61594c;

    @c.InterfaceC0186c(id = 3)
    public final PendingIntent f61595d;

    @c.b
    public D(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) PendingIntent pendingIntent) {
        this.f61593b = 1;
        this.f61594c = (String) G0.A.r(str);
        this.f61595d = (PendingIntent) G0.A.r(pendingIntent);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61593b);
        I0.b.Y(parcel, 2, this.f61594c, false);
        I0.b.S(parcel, 3, this.f61595d, i10, false);
        I0.b.b(parcel, a10);
    }

    public D(String str, PendingIntent pendingIntent) {
        this(1, str, pendingIntent);
    }
}
