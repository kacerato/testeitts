package y0;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import z0.C16216a;

public final class j implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    arrayList = SafeParcelReader.L(parcel, X10, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.C(parcel, X10, Account.CREATOR);
                    break;
                case 4:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 5:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 6:
                    z12 = SafeParcelReader.P(parcel, X10);
                    break;
                case 7:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.L(parcel, X10, C16216a.CREATOR);
                    break;
                case 10:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new GoogleSignInOptions(i10, arrayList, account, z10, z11, z12, str, str2, arrayList2, str3);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new GoogleSignInOptions[i10];
    }
}
