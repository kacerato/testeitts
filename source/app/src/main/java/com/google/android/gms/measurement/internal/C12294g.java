package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "BatchUploadStatusParcelCreator")
public final class C12294g extends I0.a {
    public static final Parcelable.Creator<C12294g> CREATOR = new C12302h();

    @c.InterfaceC0186c(id = 1)
    public final long f63298b;

    @c.InterfaceC0186c(id = 2)
    public final int f63299c;

    @c.InterfaceC0186c(id = 3)
    public final long f63300d;

    @c.b
    public C12294g(@c.e(id = 1) long j10, @c.e(id = 2) int i10, @c.e(id = 3) long j11) {
        this.f63298b = j10;
        this.f63299c = i10;
        this.f63300d = j11;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        long j10 = this.f63298b;
        int a10 = I0.b.a(parcel);
        I0.b.K(parcel, 1, j10);
        I0.b.F(parcel, 2, this.f63299c);
        I0.b.K(parcel, 3, this.f63300d);
        I0.b.b(parcel, a10);
    }
}
