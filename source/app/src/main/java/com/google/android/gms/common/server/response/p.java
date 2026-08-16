package com.google.android.gms.common.server.response;

import G0.F;
import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.a;

@F
@c.a(creator = "FieldMapPairCreator")
public final class p extends I0.a {
    public static final Parcelable.Creator<p> CREATOR = new n();

    @c.h(id = 1)
    public final int f61408b;

    @c.InterfaceC0186c(id = 2)
    public final String f61409c;

    @c.InterfaceC0186c(id = 3)
    public final a.C0954a f61410d;

    @c.b
    public p(@c.e(id = 1) int i10, @c.e(id = 2) String str, @c.e(id = 3) a.C0954a c0954a) {
        this.f61408b = i10;
        this.f61409c = str;
        this.f61410d = c0954a;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f61408b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.Y(parcel, 2, this.f61409c, false);
        I0.b.S(parcel, 3, this.f61410d, i10, false);
        I0.b.b(parcel, a10);
    }

    public p(String str, a.C0954a c0954a) {
        this.f61408b = 1;
        this.f61409c = str;
        this.f61410d = c0954a;
    }
}
