package s0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class g implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        long j10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 3:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 5:
                    i12 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 6:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C15221a(i10, j10, str, i11, i12, str2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C15221a[i10];
    }
}
