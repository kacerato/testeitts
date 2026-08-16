package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class q implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        ArrayList arrayList = null;
        String str = null;
        Account account = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    arrayList = SafeParcelReader.L(parcel, X10, Scope.CREATOR);
                    break;
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 4:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 5:
                    account = (Account) SafeParcelReader.C(parcel, X10, Account.CREATOR);
                    break;
                case 6:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 7:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    z12 = SafeParcelReader.P(parcel, X10);
                    break;
                case 9:
                    bundle = SafeParcelReader.g(parcel, X10);
                    break;
                case 10:
                    z13 = SafeParcelReader.P(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new AuthorizationRequest(arrayList, str, z10, z11, account, str2, str3, z12, bundle, z13);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new AuthorizationRequest[i10];
    }
}
