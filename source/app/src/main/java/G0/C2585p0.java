package G0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C2585p0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Scope[] scopeArr = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 3) {
                i12 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.K(parcel, X10, Scope.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2583o0(i10, i11, i12, scopeArr);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2583o0[i10];
    }
}
