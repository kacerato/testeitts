package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class I implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X10) != 1) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X10, PendingIntent.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11889j(pendingIntent);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11889j[i10];
    }
}
