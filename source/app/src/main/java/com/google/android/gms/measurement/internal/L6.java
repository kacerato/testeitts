package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

@c.a(creator = "UploadBatchesParcelCreator")
public final class L6 extends I0.a {
    public static final Parcelable.Creator<L6> CREATOR = new M6();

    @c.InterfaceC0186c(id = 1)
    public final List f62783b;

    @c.b
    public L6(@c.e(id = 1) List list) {
        this.f62783b = list;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f62783b;
        int a10 = I0.b.a(parcel);
        I0.b.d0(parcel, 1, list, false);
        I0.b.b(parcel, a10);
    }
}
