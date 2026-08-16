package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class X implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        short s10 = 0;
        short s11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                s10 = SafeParcelReader.f0(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                s11 = SafeParcelReader.f0(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3557z(i10, s10, s11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3557z[i10];
    }
}
