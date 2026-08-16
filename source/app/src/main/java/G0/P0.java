package G0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class P0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        D d10 = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z10 = false;
        boolean z11 = false;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    d10 = (D) SafeParcelReader.C(parcel, X10, D.CREATOR);
                    break;
                case 2:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 3:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 4:
                    iArr = SafeParcelReader.u(parcel, X10);
                    break;
                case 5:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 6:
                    iArr2 = SafeParcelReader.u(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2572j(d10, z10, z11, iArr, i10, iArr2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2572j[i10];
    }
}
