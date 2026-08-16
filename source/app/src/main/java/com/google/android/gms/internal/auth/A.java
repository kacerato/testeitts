package com.google.android.gms.internal.auth;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "SendDataRequestCreator")
public final class A extends I0.a {
    public static final Parcelable.Creator<A> CREATOR = new C();

    @c.h(id = 1)
    public final int f61579b;

    @c.InterfaceC0186c(id = 2)
    public final String f61580c;

    @c.InterfaceC0186c(id = 3)
    public final byte[] f61581d;

    @c.b
    public A(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) byte[] bArr) {
        this.f61579b = 1;
        this.f61580c = (String) G0.A.r(str);
        this.f61581d = (byte[]) G0.A.r(bArr);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, this.f61579b);
        I0.b.Y(parcel, 2, this.f61580c, false);
        I0.b.m(parcel, 3, this.f61581d, false);
        I0.b.b(parcel, a10);
    }

    public A(String str, byte[] bArr) {
        this(1, str, bArr);
    }
}
