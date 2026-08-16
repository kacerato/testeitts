package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.a;

public final class n implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        int i10 = 0;
        a.C0954a c0954a = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                c0954a = (a.C0954a) SafeParcelReader.C(parcel, X10, a.C0954a.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new p(i10, str, c0954a);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new p[i10];
    }
}
