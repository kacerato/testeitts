package P0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class e implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 != 2) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                arrayList = SafeParcelReader.L(parcel, X10, d.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new a(i10, arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new a[i10];
    }
}
