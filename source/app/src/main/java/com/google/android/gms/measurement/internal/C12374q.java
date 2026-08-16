package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C12374q implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X10) != 1) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                bundle = SafeParcelReader.g(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C12366p(bundle);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C12366p[i10];
    }
}
