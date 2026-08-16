package v0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class y implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 2:
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 3:
                    arrayList2 = SafeParcelReader.I(parcel, X10);
                    break;
                case 4:
                    arrayList3 = SafeParcelReader.I(parcel, X10);
                    break;
                case 5:
                    arrayList4 = SafeParcelReader.I(parcel, X10);
                    break;
                case 6:
                    arrayList5 = SafeParcelReader.I(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new x(i10, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new x[i10];
    }
}
