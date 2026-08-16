package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class M6 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X10) != 1) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                arrayList = SafeParcelReader.L(parcel, X10, H6.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new L6(arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new L6[i10];
    }
}
