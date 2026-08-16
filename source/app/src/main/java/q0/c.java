package Q0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.q;

public final class c implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Parcel parcel2 = null;
        int i10 = 0;
        q qVar = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                parcel2 = SafeParcelReader.y(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                qVar = (q) SafeParcelReader.C(parcel, X10, q.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new com.google.android.gms.common.server.response.c(i10, parcel2, qVar);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new com.google.android.gms.common.server.response.c[i10];
    }
}
