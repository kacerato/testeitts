package G0;

import B0.C2320e;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class O0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Bundle bundle = null;
        C2572j c2572j = null;
        int i10 = 0;
        C2320e[] c2320eArr = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                bundle = SafeParcelReader.g(parcel, X10);
            } else if (O10 == 2) {
                c2320eArr = (C2320e[]) SafeParcelReader.K(parcel, X10, C2320e.CREATOR);
            } else if (O10 == 3) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                c2572j = (C2572j) SafeParcelReader.C(parcel, X10, C2572j.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new N0(bundle, c2320eArr, i10, c2572j);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new N0[i10];
    }
}
