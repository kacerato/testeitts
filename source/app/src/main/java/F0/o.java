package F0;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class o implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i10 = 0;
        int i11 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                strArr = SafeParcelReader.H(parcel, X10);
            } else if (O10 == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.K(parcel, X10, CursorWindow.CREATOR);
            } else if (O10 == 3) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 4) {
                bundle = SafeParcelReader.g(parcel, X10);
            } else if (O10 != 1000) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                i10 = SafeParcelReader.Z(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        DataHolder dataHolder = new DataHolder(i10, strArr, cursorWindowArr, i11, bundle);
        dataHolder.C0();
        return dataHolder;
    }

    @Override
    public final Object[] newArray(int i10) {
        return new DataHolder[i10];
    }
}
