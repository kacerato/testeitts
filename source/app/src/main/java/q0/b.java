package Q0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.o;
import com.google.android.gms.common.server.response.p;
import java.util.ArrayList;

public final class b implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        int i10 = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i10 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                arrayList = SafeParcelReader.L(parcel, X10, p.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new o(i10, str, arrayList);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new o[i10];
    }
}
