package s0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class s implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        Long l10 = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
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
                    l10 = SafeParcelReader.d0(parcel, X10);
                    break;
                case 4:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 5:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 6:
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 7:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new TokenData(i10, str, l10, z10, z11, arrayList, str2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new TokenData[i10];
    }
}
