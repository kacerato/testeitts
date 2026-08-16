package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class G implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                arrayList = SafeParcelReader.L(parcel, X10, Scope.CREATOR);
            } else if (O10 == 2) {
                account = (Account) SafeParcelReader.C(parcel, X10, Account.CREATOR);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new RevokeAccessRequest(arrayList, account, str);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new RevokeAccessRequest[i10];
    }
}
