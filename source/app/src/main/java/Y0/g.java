package y0;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class g implements Parcelable.Creator {
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
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        long j10 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 5:
                    str4 = SafeParcelReader.G(parcel, X10);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.C(parcel, X10, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 9:
                    str6 = SafeParcelReader.G(parcel, X10);
                    break;
                case 10:
                    arrayList = SafeParcelReader.L(parcel, X10, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.G(parcel, X10);
                    break;
                case 12:
                    str8 = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new GoogleSignInAccount(i10, str, str2, str3, str4, uri, str5, j10, str6, arrayList, str7, str8);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new GoogleSignInAccount[i10];
    }
}
