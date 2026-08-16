package y0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class l implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 4) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.C(parcel, X10, GoogleSignInAccount.CREATOR);
            } else if (O10 != 8) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str2 = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new SignInAccount[i10];
    }
}
