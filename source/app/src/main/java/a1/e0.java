package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class e0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        boolean z10 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 != 2) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                bArr = SafeParcelReader.h(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new d0(z10, bArr);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new d0[i10];
    }
}
