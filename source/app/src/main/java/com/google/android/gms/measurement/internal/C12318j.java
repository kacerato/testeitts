package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C12318j implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        i7 i7Var = null;
        String str3 = null;
        I i10 = null;
        I i11 = null;
        I i12 = null;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        boolean z10 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    i7Var = (i7) SafeParcelReader.C(parcel, X10, i7.CREATOR);
                    break;
                case 5:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 6:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 7:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    i10 = (I) SafeParcelReader.C(parcel, X10, I.CREATOR);
                    break;
                case 9:
                    j11 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 10:
                    i11 = (I) SafeParcelReader.C(parcel, X10, I.CREATOR);
                    break;
                case 11:
                    j12 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 12:
                    i12 = (I) SafeParcelReader.C(parcel, X10, I.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C12310i(str, str2, i7Var, j10, z10, str3, i10, j11, i11, j12, i12);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C12310i[i10];
    }
}
