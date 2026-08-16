package G0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class B0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        int i11 = 0;
        int i12 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 3) {
                z11 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 4) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                i12 = SafeParcelReader.Z(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new D(i10, z10, z11, i11, i12);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new D[i10];
    }
}
