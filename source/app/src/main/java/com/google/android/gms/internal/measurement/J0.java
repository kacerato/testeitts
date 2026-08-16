package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class J0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Bundle bundle = null;
        String str = null;
        boolean z10 = false;
        long j10 = 0;
        long j11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                j10 = SafeParcelReader.c0(parcel, X10);
            } else if (O10 == 2) {
                j11 = SafeParcelReader.c0(parcel, X10);
            } else if (O10 == 3) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 7) {
                bundle = SafeParcelReader.g(parcel, X10);
            } else if (O10 != 8) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new I0(j10, j11, z10, bundle, str);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new I0[i10];
    }
}
