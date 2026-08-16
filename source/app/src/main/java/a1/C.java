package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        long j10 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X10) != 1) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                j10 = SafeParcelReader.c0(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new B(j10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new B[i10];
    }
}
