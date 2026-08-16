package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class H implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        PendingIntent pendingIntent = null;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        String str3 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X10, PendingIntent.CREATOR);
                    break;
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 5:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 6:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new SaveAccountLinkingTokenRequest(pendingIntent, str, str2, arrayList, str3, i10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new SaveAccountLinkingTokenRequest[i10];
    }
}
