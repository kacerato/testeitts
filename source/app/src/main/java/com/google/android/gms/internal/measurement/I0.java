package com.google.android.gms.internal.measurement;

import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

@c.g({4, 5, 6})
@c.a(creator = "InitializationParamsCreator")
public final class I0 extends I0.a {
    public static final Parcelable.Creator<I0> CREATOR = new J0();

    @c.InterfaceC0186c(id = 1)
    public final long f61941b;

    @c.InterfaceC0186c(id = 2)
    public final long f61942c;

    @c.InterfaceC0186c(id = 3)
    public final boolean f61943d;

    @Nullable
    @c.InterfaceC0186c(id = 7)
    public final Bundle f61944e;

    @Nullable
    @c.InterfaceC0186c(id = 8)
    public final String f61945f;

    @c.b
    public I0(@c.e(id = 1) long j10, @c.e(id = 2) long j11, @c.e(id = 3) boolean z10, @Nullable @c.e(id = 7) Bundle bundle, @Nullable @c.e(id = 8) String str) {
        this.f61941b = j10;
        this.f61942c = j11;
        this.f61943d = z10;
        this.f61944e = bundle;
        this.f61945f = str;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        long j10 = this.f61941b;
        int a10 = I0.b.a(parcel);
        I0.b.K(parcel, 1, j10);
        I0.b.K(parcel, 2, this.f61942c);
        I0.b.g(parcel, 3, this.f61943d);
        I0.b.k(parcel, 7, this.f61944e, false);
        I0.b.Y(parcel, 8, this.f61945f, false);
        I0.b.b(parcel, a10);
    }
}
