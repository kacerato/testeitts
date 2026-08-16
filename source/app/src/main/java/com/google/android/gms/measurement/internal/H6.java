package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "UploadBatchParcelCreator")
public final class H6 extends I0.a {
    public static final Parcelable.Creator<H6> CREATOR = new I6();

    @c.InterfaceC0186c(id = 1)
    public final long f62672b;

    @c.InterfaceC0186c(id = 2)
    public byte[] f62673c;

    @c.InterfaceC0186c(id = 3)
    public final String f62674d;

    @c.InterfaceC0186c(id = 4)
    public final Bundle f62675e;

    @c.InterfaceC0186c(id = 5)
    public final int f62676f;

    @c.InterfaceC0186c(id = 6)
    public final long f62677g;

    @c.InterfaceC0186c(id = 7)
    public String f62678h;

    @c.b
    public H6(@c.e(id = 1) long j10, @c.e(id = 2) byte[] bArr, @c.e(id = 3) String str, @c.e(id = 4) Bundle bundle, @c.e(id = 5) int i10, @c.e(id = 6) long j11, @c.e(id = 7) String str2) {
        this.f62672b = j10;
        this.f62673c = bArr;
        this.f62674d = str;
        this.f62675e = bundle;
        this.f62676f = i10;
        this.f62677g = j11;
        this.f62678h = str2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        long j10 = this.f62672b;
        int a10 = I0.b.a(parcel);
        I0.b.K(parcel, 1, j10);
        I0.b.m(parcel, 2, this.f62673c, false);
        I0.b.Y(parcel, 3, this.f62674d, false);
        I0.b.k(parcel, 4, this.f62675e, false);
        I0.b.F(parcel, 5, this.f62676f);
        I0.b.K(parcel, 6, this.f62677g);
        I0.b.Y(parcel, 7, this.f62678h, false);
        I0.b.b(parcel, a10);
    }
}
