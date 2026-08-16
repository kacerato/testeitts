package M0;

import B0.C2320e;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class f implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        String str = null;
        boolean z10 = false;
        String str2 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                arrayList = SafeParcelReader.L(parcel, X10, C2320e.CREATOR);
            } else if (O10 == 2) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 3) {
                str2 = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C2812a(arrayList, z10, str2, str);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C2812a[i10];
    }
}
