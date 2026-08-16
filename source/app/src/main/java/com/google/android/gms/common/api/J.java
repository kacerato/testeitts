package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class J implements Parcelable.Creator {
    public static final C11895b a(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        C11901h c11901h = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X10) != 1) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                c11901h = (C11901h) SafeParcelReader.C(parcel, X10, C11901h.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11895b(c11901h);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11895b[i10];
    }
}
