package v0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C15758D implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        long j10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 3) {
                j10 = SafeParcelReader.c0(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                z11 = SafeParcelReader.P(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new e(i10, z10, j10, z11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new e[i10];
    }
}
