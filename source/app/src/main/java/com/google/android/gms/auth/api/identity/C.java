package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.C11882c;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

public final class C implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        ArrayList<String> arrayList = null;
        ArrayList arrayList2 = null;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    z10 = SafeParcelReader.P(parcel, X10);
                    break;
                case 2:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 4:
                    z11 = SafeParcelReader.P(parcel, X10);
                    break;
                case 5:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                case 6:
                    arrayList = SafeParcelReader.I(parcel, X10);
                    break;
                case 7:
                    z12 = SafeParcelReader.P(parcel, X10);
                    break;
                case 8:
                    arrayList2 = SafeParcelReader.L(parcel, X10, C11884e.CREATOR);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C11882c.b(z10, str, str2, z11, str3, arrayList, z12, arrayList2);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C11882c.b[i10];
    }
}
