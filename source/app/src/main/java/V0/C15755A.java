package v0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.HashSet;

public final class C15755A implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        HashSet hashSet = new HashSet();
        int i10 = 0;
        C15756B c15756b = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
                hashSet.add(1);
            } else if (O10 == 2) {
                c15756b = (C15756B) SafeParcelReader.C(parcel, X10, C15756B.CREATOR);
                hashSet.add(2);
            } else if (O10 == 3) {
                str = SafeParcelReader.G(parcel, X10);
                hashSet.add(3);
            } else if (O10 == 4) {
                str2 = SafeParcelReader.G(parcel, X10);
                hashSet.add(4);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str3 = SafeParcelReader.G(parcel, X10);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == i02) {
            return new z(hashSet, i10, c15756b, str, str2, str3);
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + i02, parcel);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new z[i10];
    }
}
