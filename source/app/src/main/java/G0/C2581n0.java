package G0;

import B0.C2318c;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C2581n0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        IBinder iBinder = null;
        C2318c c2318c = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                iBinder = SafeParcelReader.Y(parcel, X10);
            } else if (O10 == 3) {
                c2318c = (C2318c) SafeParcelReader.C(parcel, X10, C2318c.CREATOR);
            } else if (O10 == 4) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                z11 = SafeParcelReader.P(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2579m0(i10, iBinder, c2318c, z10, z11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2579m0[i10];
    }
}
