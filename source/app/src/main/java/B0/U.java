package B0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class U implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        int i10 = 0;
        String str = null;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 3) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                i10 = SafeParcelReader.Z(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new T(z10, str, i11, i10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new T[i10];
    }
}
