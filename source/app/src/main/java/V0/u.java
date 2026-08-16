package v0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.HashSet;

public final class u implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        HashSet hashSet = new HashSet();
        int i10 = 0;
        ArrayList arrayList = null;
        x xVar = null;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
                hashSet.add(1);
            } else if (O10 == 2) {
                arrayList = SafeParcelReader.L(parcel, X10, z.CREATOR);
                hashSet.add(2);
            } else if (O10 == 3) {
                i11 = SafeParcelReader.Z(parcel, X10);
                hashSet.add(3);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                xVar = (x) SafeParcelReader.C(parcel, X10, x.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == i02) {
            return new t(hashSet, i10, arrayList, i11, xVar);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + i02, parcel);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new t[i10];
    }
}
