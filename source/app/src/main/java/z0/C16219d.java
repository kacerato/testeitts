package z0;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C16219d implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Bundle bundle = null;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                bundle = SafeParcelReader.g(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C16216a(i10, i11, bundle);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C16216a[i10];
    }
}
