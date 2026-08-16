package x0;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class C16045g implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                i11 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X10, PendingIntent.CREATOR);
            } else if (O10 == 3) {
                i12 = SafeParcelReader.Z(parcel, X10);
            } else if (O10 == 4) {
                bundle = SafeParcelReader.g(parcel, X10);
            } else if (O10 == 5) {
                bArr = SafeParcelReader.h(parcel, X10);
            } else if (O10 != 1000) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                i10 = SafeParcelReader.Z(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C16043e(i10, i11, pendingIntent, i12, bundle, bArr);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C16043e[i10];
    }
}
