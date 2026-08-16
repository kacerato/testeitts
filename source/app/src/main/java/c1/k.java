package c1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class k implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        com.google.android.gms.fido.u2f.api.common.b bVar = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                bVar = (com.google.android.gms.fido.u2f.api.common.b) SafeParcelReader.C(parcel, X10, com.google.android.gms.fido.u2f.api.common.b.CREATOR);
            } else if (O10 == 3) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str2 = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new c(bVar, str, str2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new c[i10];
    }
}
