package B0;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class W implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        String str = null;
        IBinder iBinder = null;
        boolean z11 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 2) {
                iBinder = SafeParcelReader.Y(parcel, X10);
            } else if (O10 == 3) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                z11 = SafeParcelReader.P(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new V(str, iBinder, z10, z11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new V[i10];
    }
}
