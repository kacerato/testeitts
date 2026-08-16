package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C12302h implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        long j10 = 0;
        long j11 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                j10 = SafeParcelReader.c0(parcel, X10);
            } else if (O10 == 2) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                j11 = SafeParcelReader.c0(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C12294g(j10, i10, j11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C12294g[i10];
    }
}
