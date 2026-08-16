package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class B implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        ArrayList arrayList = null;
        boolean z10 = false;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 2:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    str4 = SafeParcelReader.G(parcel, X10);
                    break;
                case 5:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 6:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 7:
                    arrayList = SafeParcelReader.L(parcel, X10, C11884e.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11887h(str, str2, str3, str4, z10, i10, arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11887h[i10];
    }
}
