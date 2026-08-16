package G0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C2563e0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        String str = null;
        String str2 = null;
        long j10 = 0;
        long j11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i11 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    i12 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 3:
                    i13 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 4:
                    j10 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 5:
                    j11 = SafeParcelReader.c0(parcel, X10);
                    break;
                case 6:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 7:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 8:
                    i14 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 9:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2599x(i11, i12, i13, j10, j11, str, str2, i14, i10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2599x[i10];
    }
}
