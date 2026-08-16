package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.a;

public final class m implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        P0.b bVar = null;
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        int i12 = 0;
        boolean z11 = false;
        int i13 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 3:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 4:
                    i12 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 5:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 6:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 7:
                    i13 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 8:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 9:
                    bVar = (P0.b) SafeParcelReader.C(parcel, X10, P0.b.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new a.C0954a(i10, i11, z10, i12, z11, str, i13, str2, bVar);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new a.C0954a[i10];
    }
}
