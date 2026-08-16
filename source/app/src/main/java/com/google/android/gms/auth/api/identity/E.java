package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.C11882c;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class E implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        byte[] bArr = null;
        boolean z10 = false;
        String str = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 1) {
                z10 = SafeParcelReader.P(parcel, X10);
            } else if (O10 == 2) {
                bArr = SafeParcelReader.h(parcel, X10);
            } else if (O10 != 3) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                str = SafeParcelReader.G(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11882c.d(z10, bArr, str);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11882c.d[i10];
    }
}
