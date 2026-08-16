package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

@c.a(creator = "ConsentParcelCreator")
public final class C12366p extends I0.a {
    public static final Parcelable.Creator<C12366p> CREATOR = new C12374q();

    @c.InterfaceC0186c(id = 1)
    public final Bundle f63469b;

    @c.b
    public C12366p(@c.e(id = 1) Bundle bundle) {
        this.f63469b = bundle;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        Bundle bundle = this.f63469b;
        int a10 = I0.b.a(parcel);
        I0.b.k(parcel, 1, bundle, false);
        I0.b.b(parcel, a10);
    }
}
