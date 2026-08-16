package com.google.android.gms.measurement.internal;

import I0.c;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

@c.a(creator = "UploadBatchesCriteriaCreator")
public final class J6 extends I0.a {
    public static final Parcelable.Creator<J6> CREATOR = new K6();

    @c.InterfaceC0186c(id = 1)
    public final List f62752b;

    @c.b
    public J6(@c.e(id = 1) List list) {
        this.f62752b = list;
    }

    public static J6 b(EnumC12332k5... enumC12332k5Arr) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(enumC12332k5Arr[0].N1()));
        return new J6(arrayList);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.f62752b;
        int a10 = I0.b.a(parcel);
        I0.b.H(parcel, 1, list, false);
        I0.b.b(parcel, a10);
    }
}
