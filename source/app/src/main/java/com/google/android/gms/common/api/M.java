package com.google.android.gms.common.api;

import B0.C2318c;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class M implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        C2318c c2318c = null;
        int i10 = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X10, PendingIntent.CREATOR);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                c2318c = (C2318c) SafeParcelReader.C(parcel, X10, C2318c.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new Status(i10, str, pendingIntent, c2318c);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new Status[i10];
    }
}
