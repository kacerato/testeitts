package com.google.android.gms.auth.api.identity;

import a1.C3549q;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class L implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        C3549q c3549q = null;
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
                    uri = (Uri) SafeParcelReader.C(parcel, X10, Uri.CREATOR);
                    break;
                case 6:
                    str5 = SafeParcelReader.G(parcel, X10);
                    break;
                case 7:
                    str6 = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    str7 = SafeParcelReader.G(parcel, X10);
                    break;
                case 9:
                    c3549q = (C3549q) SafeParcelReader.C(parcel, X10, C3549q.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11893n(str, str2, str3, str4, uri, str5, str6, str7, c3549q);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11893n[i10];
    }
}
