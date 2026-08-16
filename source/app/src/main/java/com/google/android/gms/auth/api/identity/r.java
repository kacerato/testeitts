package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class r implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        ArrayList<String> arrayList = null;
        GoogleSignInAccount googleSignInAccount = null;
        PendingIntent pendingIntent = null;
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
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 5:
                    googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.C(parcel, X10, GoogleSignInAccount.CREATOR);
                    break;
                case 6:
                    pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X10, PendingIntent.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11881b(str, str2, str3, arrayList, googleSignInAccount, pendingIntent);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11881b[i10];
    }
}
