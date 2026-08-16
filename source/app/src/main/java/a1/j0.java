package a1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class j0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        com.google.android.gms.fido.fido2.api.common.d dVar = null;
        Uri uri = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                dVar = (com.google.android.gms.fido.fido2.api.common.d) SafeParcelReader.C(parcel, X10, com.google.android.gms.fido.fido2.api.common.d.CREATOR);
            } else if (O10 == 3) {
                uri = (Uri) SafeParcelReader.C(parcel, X10, Uri.CREATOR);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                bArr = SafeParcelReader.h(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3539g(dVar, uri, bArr);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3539g[i10];
    }
}
