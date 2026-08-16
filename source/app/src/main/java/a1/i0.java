package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class i0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        Boolean bool = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 3) {
                bool = SafeParcelReader.Q(parcel, X10);
            } else if (O10 == 4) {
                str2 = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str3 = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new com.google.android.gms.fido.fido2.api.common.c(str, bool, str2, str3);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new com.google.android.gms.fido.fido2.api.common.c[i10];
    }
}
