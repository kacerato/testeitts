package a1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class L implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        C3537e c3537e = null;
        C3536d c3536d = null;
        com.google.android.gms.fido.fido2.api.common.b bVar = null;
        C3534b c3534b = null;
        String str3 = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            switch (SafeParcelReader.O(X10)) {
                case 1:
                    str = SafeParcelReader.G(parcel, X10);
                    break;
                case 2:
                    str2 = SafeParcelReader.G(parcel, X10);
                    break;
                case 3:
                    bArr = SafeParcelReader.h(parcel, X10);
                    break;
                case 4:
                    c3537e = (C3537e) SafeParcelReader.C(parcel, X10, C3537e.CREATOR);
                    break;
                case 5:
                    c3536d = (C3536d) SafeParcelReader.C(parcel, X10, C3536d.CREATOR);
                    break;
                case 6:
                    bVar = (com.google.android.gms.fido.fido2.api.common.b) SafeParcelReader.C(parcel, X10, com.google.android.gms.fido.fido2.api.common.b.CREATOR);
                    break;
                case 7:
                    c3534b = (C3534b) SafeParcelReader.C(parcel, X10, C3534b.CREATOR);
                    break;
                case 8:
                    str3 = SafeParcelReader.G(parcel, X10);
                    break;
                default:
                    SafeParcelReader.h0(parcel, X10);
                    break;
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3549q(str, str2, bArr, c3537e, c3536d, bVar, c3534b, str3);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3549q[i10];
    }
}
