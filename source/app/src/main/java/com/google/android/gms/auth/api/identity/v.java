package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.C11882c;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class v implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        int i10 = 0;
        boolean z11 = false;
        C11882c.e eVar = null;
        C11882c.b bVar = null;
        String str = null;
        C11882c.d dVar = null;
        C11882c.C0947c c0947c = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    eVar = (C11882c.e) SafeParcelReader.C(parcel, X10, C11882c.e.CREATOR);
                    break;
                case 2:
                    bVar = (C11882c.b) SafeParcelReader.C(parcel, X10, C11882c.b.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 5:
                    i10 = SafeParcelReader.Z(parcel, X10);
                    break;
                case 6:
                    dVar = (C11882c.d) SafeParcelReader.C(parcel, X10, C11882c.d.CREATOR);
                    break;
                case 7:
                    c0947c = (C11882c.C0947c) SafeParcelReader.C(parcel, X10, C11882c.C0947c.CREATOR);
                    break;
                case 8:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11882c(eVar, bVar, str, z10, i10, dVar, c0947c, z11);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11882c[i10];
    }
}
