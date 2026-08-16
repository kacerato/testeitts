package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class Y implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        C3556y c3556y = null;
        b0 b0Var = null;
        C3535c c3535c = null;
        d0 d0Var = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                c3556y = (C3556y) SafeParcelReader.C(parcel, X10, C3556y.CREATOR);
            } else if (O10 == 2) {
                b0Var = (b0) SafeParcelReader.C(parcel, X10, b0.CREATOR);
            } else if (O10 == 3) {
                c3535c = (C3535c) SafeParcelReader.C(parcel, X10, C3535c.CREATOR);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                d0Var = (d0) SafeParcelReader.C(parcel, X10, d0.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3534b(c3556y, b0Var, c3535c, d0Var);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3534b[i10];
    }
}
