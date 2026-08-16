package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class h0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = 0;
        String str = null;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 3) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                i11 = SafeParcelReader.Z(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new com.google.android.gms.fido.fido2.api.common.b(i10, str, i11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new com.google.android.gms.fido.fido2.api.common.b[i10];
    }
}
