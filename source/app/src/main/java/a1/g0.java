package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class g0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        String[] strArr = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                bArr = SafeParcelReader.h(parcel, X10);
            } else if (O10 == 3) {
                bArr2 = SafeParcelReader.h(parcel, X10);
            } else if (O10 == 4) {
                bArr3 = SafeParcelReader.h(parcel, X10);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                strArr = SafeParcelReader.H(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3537e(bArr, bArr2, bArr3, strArr);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3537e[i10];
    }
}
