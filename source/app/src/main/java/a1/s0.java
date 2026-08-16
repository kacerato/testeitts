package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class s0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        boolean z11 = false;
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        byte[] bArr2 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 2:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    bArr = SafeParcelReader.h(parcel, X10);
                    break;
                case 4:
                    bArr2 = SafeParcelReader.h(parcel, X10);
                    break;
                case 5:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 6:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3545m(str, str2, bArr, bArr2, z10, z11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3545m[i10];
    }
}
