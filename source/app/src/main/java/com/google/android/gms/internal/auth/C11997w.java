package com.google.android.gms.internal.auth;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "NotifyCompletionRequestCreator")
public final class C11997w extends I0.a {
    public static final Parcelable.Creator<C11997w> CREATOR = new C12001x();

    @c.h(id = 1)
    public final int f61854b;

    @c.InterfaceC0186c(id = 2)
    public final String f61855c;

    @c.InterfaceC0186c(id = 3)
    public final int f61856d;

    @c.b
    public C11997w(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) int i11) {
        this.f61854b = 1;
        this.f61855c = (String) G0.A.r(str);
        this.f61856d = i11;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61854b);
        I0.b.Y(parcel, 2, this.f61855c, false);
        I0.b.F(parcel, 3, this.f61856d);
        I0.b.b(parcel, a10);
    }

    public C11997w(String str, int i10) {
        this(1, str, i10);
    }
}
