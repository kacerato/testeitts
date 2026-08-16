package a1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class k0 implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        r rVar = null;
        Uri uri = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            int O10 = SafeParcelReader.O(X10);
            if (O10 == 2) {
                rVar = (r) SafeParcelReader.C(parcel, X10, r.CREATOR);
            } else if (O10 == 3) {
                uri = (Uri) SafeParcelReader.C(parcel, X10, Uri.CREATOR);
            } else if (O10 != 4) {
                SafeParcelReader.h0(parcel, X10);
            } else {
                bArr = SafeParcelReader.h(parcel, X10);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new C3540h(rVar, uri, bArr);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new C3540h[i10];
    }
}
