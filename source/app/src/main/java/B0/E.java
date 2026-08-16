package B0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class E implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        long j10 = -1;
        int i10 = 0;
        String str = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 2) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                j10 = SafeParcelReader.c0(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2320e(str, i10, j10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2320e[i10];
    }
}
