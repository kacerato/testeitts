package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class I6 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        String str = null;
        Bundle bundle = null;
        String str2 = null;
        long j10 = 0;
        long j11 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 2:
                    bArr = SafeParcelReader.h(parcel, X10);
                    break;
                case 3:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    bundle = SafeParcelReader.g(parcel, X10);
                    break;
                case 5:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 6:
                    j11 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 7:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new H6(j10, bArr, str, bundle, i10, j11, str2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new H6[i10];
    }
}
