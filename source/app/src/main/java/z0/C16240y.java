package z0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C16240y implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                googleSignInOptions = (GoogleSignInOptions) SafeParcelReader.C(parcel, X10, GoogleSignInOptions.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new SignInConfiguration[i10];
    }
}
