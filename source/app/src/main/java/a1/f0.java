package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class f0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        byte[] bArr4 = null;
        byte[] bArr5 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                bArr = SafeParcelReader.h(parcel, X10);
            } else if (O10 == 3) {
                bArr2 = SafeParcelReader.h(parcel, X10);
            } else if (O10 == 4) {
                bArr3 = SafeParcelReader.h(parcel, X10);
            } else if (O10 == 5) {
                bArr4 = SafeParcelReader.h(parcel, X10);
            } else if (O10 != 6) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                bArr5 = SafeParcelReader.h(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3536d(bArr, bArr2, bArr3, bArr4, bArr5);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3536d[i10];
    }
}
