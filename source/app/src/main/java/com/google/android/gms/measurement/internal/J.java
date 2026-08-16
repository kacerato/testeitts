package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class J implements Parcelable.Creator {
    public static void a(I i10, Parcel parcel, int i11) {
        String str = i10.f62679b;
        int a10 = I0.b.a(parcel);
        I0.b.Y(parcel, 2, str, false);
        I0.b.S(parcel, 3, i10.f62680c, i11, false);
        I0.b.Y(parcel, 4, i10.f62681d, false);
        I0.b.K(parcel, 5, i10.f62682e);
        I0.b.b(parcel, a10);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        long j10 = 0;
        String str = null;
        G g10 = null;
        String str2 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                str = SafeParcelReader.G(parcel, X10);
            } else if (O10 == 3) {
                g10 = (G) SafeParcelReader.C(parcel, X10, G.CREATOR);
            } else if (O10 == 4) {
                str2 = SafeParcelReader.G(parcel, X10);
            } else if (O10 != 5) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                j10 = SafeParcelReader.c0(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new I(str, g10, str2, j10);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new I[i10];
    }
}
