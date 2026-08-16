package t1;

import G0.C2575k0;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class k implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        C2575k0 c2575k0 = null;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 2) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                c2575k0 = (C2575k0) SafeParcelReader.C(parcel, X10, C2575k0.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new j(i10, c2575k0);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new j[i10];
    }
}
