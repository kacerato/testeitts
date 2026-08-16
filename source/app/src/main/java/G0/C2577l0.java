package G0;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C2577l0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Account account = null;
        int i10 = 0;
        int i11 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                account = (Account) SafeParcelReader.C(parcel, X10, Account.CREATOR);
            } else if (O10 == 3) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.C(parcel, X10, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2575k0(i10, account, i11, googleSignInAccount);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2575k0[i10];
    }
}
