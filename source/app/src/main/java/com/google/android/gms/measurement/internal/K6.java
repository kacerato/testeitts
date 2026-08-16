package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class K6 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList<Integer> arrayList = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X10) != 1) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                arrayList = SafeParcelReader.v(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new J6(arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new J6[i10];
    }
}
