package B0;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class S implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        String str = null;
        IBinder iBinder = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 2:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 3:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 4:
                    iBinder = SafeParcelReader.Y(parcel, X10);
                    break;
                case 5:
                    z12 = SafeParcelReader.P(parcel, X10);
                    break;
                case 6:
                    z13 = SafeParcelReader.P(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new Q(str, z10, z11, iBinder, z12, z13);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new Q[i10];
    }
}
