package t1;

import B0.C2318c;
import G0.C2579m0;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class m implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        C2318c c2318c = null;
        int i10 = 0;
        C2579m0 c2579m0 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                c2318c = (C2318c) SafeParcelReader.C(parcel, X10, C2318c.CREATOR);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                c2579m0 = (C2579m0) SafeParcelReader.C(parcel, X10, C2579m0.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new l(i10, c2318c, c2579m0);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new l[i10];
    }
}
